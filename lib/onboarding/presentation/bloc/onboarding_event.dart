part of 'onboarding_bloc.dart';

abstract class OnboardingEvent {}

class FetchConfig extends OnboardingEvent {}

class SelectExperience extends OnboardingEvent {
  final String experienceId;

  SelectExperience(this.experienceId);
}

class ToggleGoal extends OnboardingEvent {
  final String goalId;

  ToggleGoal(this.goalId);
}

class SelectBudget extends OnboardingEvent {
  final String budgetId;

  SelectBudget(this.budgetId);
}

class NextStep extends OnboardingEvent {}

class PreviousStep extends OnboardingEvent {}

class FinishOnboarding extends OnboardingEvent {}

class SkipOnboarding extends OnboardingEvent {}
