part of 'onboarding_bloc.dart';

abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoading extends OnboardingState {}

class OnboardingLoaded extends OnboardingState {
  final OnboardingConfigModel config;
  final String? selectedExperienceId;
  final Set<String> selectedGoalIds;
  final String? selectedBudgetId;
  final int currentStep;

  OnboardingLoaded({
    required this.config,
    required this.selectedExperienceId,
    required this.selectedGoalIds,
    required this.selectedBudgetId,
    required this.currentStep,
  });
}

class OnboardingCompleted extends OnboardingState {
  final OnboardingConfigModel config;
  final String? selectedExperienceId;
  final Set<String> selectedGoalIds;
  final String? selectedBudgetId;
  final bool skipped;

  OnboardingCompleted({
    required this.config,
    required this.selectedExperienceId,
    required this.selectedGoalIds,
    required this.selectedBudgetId,
    this.skipped = false,
  });
}

class OnboardingError extends OnboardingState {
  final String message;
  OnboardingError(this.message);
}
