part of 'onboarding_bloc.dart';

abstract class OnboardingEvent {
  const OnboardingEvent();
}

class FetchConfig extends OnboardingEvent {
  const FetchConfig();
}

class SelectExperience extends OnboardingEvent {
  final String experienceId;
  const SelectExperience(this.experienceId);
}

class ToggleGoal extends OnboardingEvent {
  final String goalId;
  const ToggleGoal(this.goalId);
}

class SelectBudget extends OnboardingEvent {
  final String budgetId;
  const SelectBudget(this.budgetId);
}

class NextStep extends OnboardingEvent {
  const NextStep();
}

class PreviousStep extends OnboardingEvent {
  const PreviousStep();
}

class FinishOnboarding extends OnboardingEvent {
  const FinishOnboarding();
}

class SkipOnboarding extends OnboardingEvent {
  const SkipOnboarding();
}
