import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_task_paidax2/core/network/api_response.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/data/models/get_onboarding_config_response.dart';
import 'package:tech_task_paidax2/onboarding/data/repositories/onboarding_repository.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  static const int _totalSteps = 4;

  final OnboardingRepository _repository;

  OnboardingBloc({OnboardingRepository? repository})
      : _repository = repository ?? OnboardingRepository(),
        super(OnboardingInitial()) {
    on<FetchConfig>(_onFetchConfig);
    on<SelectExperience>(_onSelectExperience);
    on<ToggleGoal>(_onToggleGoal);
    on<SelectBudget>(_onSelectBudget);
    on<NextStep>(_onNextStep);
    on<PreviousStep>(_onPreviousStep);
    on<FinishOnboarding>(_onFinishOnboarding);
    on<SkipOnboarding>(_onSkipOnboarding);
  }

  // ─── Step 0: load experience on open ────────────────────────────────────────

  Future<void> _onFetchConfig(
    FetchConfig event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());

    final result = await _repository.getExperienceConfig();

    result.when(
      noInternet: () => emit(const OnboardingError('Нет интернета')),
      value: (response) {
        response.when(
          serverError: () => emit(const OnboardingError('Ошибка сервера')),
          successExperience: (data) => emit(OnboardingLoaded(
            config: OnboardingConfigModel(experienceContent: data),
            selectedExperienceId: null,
            selectedGoalIds: {},
            selectedBudgetId: null,
            currentStep: 0,
            stepLoading: false,
          )),
          successGoals: (_) {},
          successBudget: (_) {},
          successRecommendations: (_) {},
        );
      },
    );
  }

  // ─── Selection handlers ──────────────────────────────────────────────────────

  void _onSelectExperience(
    SelectExperience event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    emit(current.copyWith(selectedExperienceId: event.experienceId));
  }

  void _onToggleGoal(
    ToggleGoal event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    final updatedGoals = Set<String>.from(current.selectedGoalIds);
    if (updatedGoals.contains(event.goalId)) {
      updatedGoals.remove(event.goalId);
    } else {
      updatedGoals.add(event.goalId);
    }
    emit(current.copyWith(selectedGoalIds: updatedGoals));
  }

  void _onSelectBudget(
    SelectBudget event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    emit(current.copyWith(selectedBudgetId: event.budgetId));
  }

  // ─── Navigation ─────────────────────────────────────────────────────────────

  Future<void> _onNextStep(
    NextStep event,
    Emitter<OnboardingState> emit,
  ) async {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    if (current.currentStep >= _totalSteps - 1) return;

    final nextStep = current.currentStep + 1;

    emit(current.copyWith(stepLoading: true));

    ApiResponse<GetOnboardingConfigResponse> result;
    switch (nextStep) {
      case 1:
        result = await _repository.getGoalsConfig();
        break;
      case 2:
        result = await _repository.getBudgetConfig();
        break;
      case 3:
        result = await _repository.getRecommendationsConfig();
        break;
      default:
        return;
    }

    result.when(
      noInternet: () => emit(const OnboardingError('Нет интернета')),
      value: (response) {
        response.when(
          serverError: () => emit(const OnboardingError('Ошибка сервера')),
          successExperience: (_) {},
          successGoals: (data) => emit(current.copyWith(
            config: current.config.copyWith(
              goalsContent: data.content,
              goals: data.goals,
            ),
            currentStep: nextStep,
            stepLoading: false,
          )),
          successBudget: (data) => emit(current.copyWith(
            config: current.config.copyWith(
              budgetContent: data.content,
              budgetRanges: data.budgetRanges,
            ),
            currentStep: nextStep,
            stepLoading: false,
          )),
          successRecommendations: (data) => emit(current.copyWith(
            config: current.config.copyWith(
              recommendationsContent: data.content,
              stock: data.stock,
              topUpCard: data.topUpCard,
              watchlistCard: data.watchlistCard,
            ),
            currentStep: nextStep,
            stepLoading: false,
          )),
        );
      },
    );
  }

  void _onPreviousStep(
    PreviousStep event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    if (current.currentStep <= 0) return;
    emit(current.copyWith(currentStep: current.currentStep - 1));
  }

  // ─── Finish / Skip ───────────────────────────────────────────────────────────

  void _onFinishOnboarding(
    FinishOnboarding event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    emit(OnboardingCompleted(
      config: current.config,
      selectedExperienceId: current.selectedExperienceId,
      selectedGoalIds: current.selectedGoalIds,
      selectedBudgetId: current.selectedBudgetId,
      skipped: false,
    ));
  }

  void _onSkipOnboarding(
    SkipOnboarding event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    emit(OnboardingCompleted(
      config: current.config,
      selectedExperienceId: current.selectedExperienceId,
      selectedGoalIds: current.selectedGoalIds,
      selectedBudgetId: current.selectedBudgetId,
      skipped: true,
    ));
  }
}
