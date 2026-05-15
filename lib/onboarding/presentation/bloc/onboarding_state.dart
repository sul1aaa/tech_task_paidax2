part of 'onboarding_bloc.dart';

abstract class OnboardingState {
  const OnboardingState();
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoading extends OnboardingState {}

class OnboardingError extends OnboardingState {
  final String message;
  const OnboardingError(this.message);
}

class OnboardingLoaded extends OnboardingState {
  final OnboardingConfigModel config;
  final String? selectedExperienceId;
  final Set<String> selectedGoalIds;
  final String? selectedBudgetId;
  final int currentStep;
  final bool stepLoading;

  const OnboardingLoaded({
    required this.config,
    this.selectedExperienceId,
    required this.selectedGoalIds,
    this.selectedBudgetId,
    required this.currentStep,
    this.stepLoading = false,
  });

  OnboardingLoaded copyWith({
    OnboardingConfigModel? config,
    String? selectedExperienceId,
    Set<String>? selectedGoalIds,
    String? selectedBudgetId,
    int? currentStep,
    bool? stepLoading,
  }) {
    return OnboardingLoaded(
      config: config ?? this.config,
      selectedExperienceId: selectedExperienceId ?? this.selectedExperienceId,
      selectedGoalIds: selectedGoalIds ?? this.selectedGoalIds,
      selectedBudgetId: selectedBudgetId ?? this.selectedBudgetId,
      currentStep: currentStep ?? this.currentStep,
      stepLoading: stepLoading ?? this.stepLoading,
    );
  }
}

class OnboardingCompleted extends OnboardingState {
  final OnboardingConfigModel config;
  final String? selectedExperienceId;
  final Set<String> selectedGoalIds;
  final String? selectedBudgetId;
  final bool skipped;

  const OnboardingCompleted({
    required this.config,
    this.selectedExperienceId,
    required this.selectedGoalIds,
    this.selectedBudgetId,
    required this.skipped,
  });
}
