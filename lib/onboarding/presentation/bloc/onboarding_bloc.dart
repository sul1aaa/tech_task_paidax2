import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
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

  Future<void> _onFetchConfig(
    FetchConfig event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());

    final result = await _repository.getOnboardingConfig();

    result.when(
      noInternet: () => emit(OnboardingError('Нет интернета')),
      value: (response) {
        response.when(
          serverError: () => emit(OnboardingError('Ошибка сервера')),
          success: (config) => emit(OnboardingLoaded(
            config: config,
            selectedExperienceId: null,
            selectedGoalIds: {},
            selectedBudgetId: null,
            currentStep: 0,
          )),
        );
      },
    );
  }

  void _onSelectExperience(
    SelectExperience event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    emit(OnboardingLoaded(
      config: current.config,
      selectedExperienceId: event.experienceId,
      selectedGoalIds: current.selectedGoalIds,
      selectedBudgetId: current.selectedBudgetId,
      currentStep: current.currentStep,
    ));
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

    emit(OnboardingLoaded(
      config: current.config,
      selectedExperienceId: current.selectedExperienceId,
      selectedGoalIds: updatedGoals,
      selectedBudgetId: current.selectedBudgetId,
      currentStep: current.currentStep,
    ));
  }

  void _onSelectBudget(
    SelectBudget event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    emit(OnboardingLoaded(
      config: current.config,
      selectedExperienceId: current.selectedExperienceId,
      selectedGoalIds: current.selectedGoalIds,
      selectedBudgetId: event.budgetId,
      currentStep: current.currentStep,
    ));
  }

  void _onNextStep(
    NextStep event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    if (current.currentStep >= _totalSteps - 1) return;
    emit(OnboardingLoaded(
      config: current.config,
      selectedExperienceId: current.selectedExperienceId,
      selectedGoalIds: current.selectedGoalIds,
      selectedBudgetId: current.selectedBudgetId,
      currentStep: current.currentStep + 1,
    ));
  }

  void _onPreviousStep(
    PreviousStep event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is! OnboardingLoaded) return;
    final current = state as OnboardingLoaded;
    if (current.currentStep <= 0) return;
    emit(OnboardingLoaded(
      config: current.config,
      selectedExperienceId: current.selectedExperienceId,
      selectedGoalIds: current.selectedGoalIds,
      selectedBudgetId: current.selectedBudgetId,
      currentStep: current.currentStep - 1,
    ));
  }

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
