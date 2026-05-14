import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_task_paidax2/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/experience_sheet_shimmer.dart';

import 'presentation/sheets/experience_sheet.dart';
import 'presentation/sheets/goals_sheet.dart';
import 'presentation/sheets/budget_sheet.dart';
import 'presentation/sheets/recommendations_sheet.dart';

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingBloc()..add(FetchConfig()),
      child: BlocListener<OnboardingBloc, OnboardingState>(
        listenWhen: (previous, current) {
          // ← добавь это
          if (previous is OnboardingLoaded && current is OnboardingLoaded) {
            return previous.currentStep != current.currentStep;
          }
          return current is OnboardingCompleted;
        },
        listener: (context, state) {
          if (state is OnboardingLoaded) {
            _navigateToPage(state.currentStep);
          } else if (state is OnboardingCompleted) {
            Navigator.of(context).pop();
          }
        },
        child: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
            if (state is OnboardingLoading || state is OnboardingInitial) {
              return const Scaffold(
                body: ExperienceSheetShimmer(),
              );
            }

            if (state is OnboardingError) {
              return Scaffold(
                body: Center(child: Text(state.message)),
              );
            }

            if (state is OnboardingLoaded) {
              return _OnboardingContent(
                pageController: _pageController,
                state: state,
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

class _OnboardingContent extends StatelessWidget {
  final PageController pageController;
  final OnboardingLoaded state;

  const _OnboardingContent({
    required this.pageController,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ExperienceSheet(
          content: state.config.experienceContent,
          selected: state.selectedExperienceId,
          onChanged: (value) {
            context.read<OnboardingBloc>().add(SelectExperience(value));
          },
          onNext: () {
            context.read<OnboardingBloc>().add(NextStep());
          },
          onSkip: () {
            context.read<OnboardingBloc>().add(SkipOnboarding());
          },
        ),
        GoalsSheet(
          content: state.config.goalsContent,
          goals: state.config.goals,
          selectedIds: state.selectedGoalIds,
          onToggle: (id) {
            context.read<OnboardingBloc>().add(ToggleGoal(id));
          },
          onNext: () {
            context.read<OnboardingBloc>().add(NextStep());
          },
          onBack: () {
            context.read<OnboardingBloc>().add(PreviousStep());
          },
          onSkip: () {
            context.read<OnboardingBloc>().add(SkipOnboarding());
          },
        ),
        BudgetSheet(
          content: state.config.budgetContent,
          budgetRanges: state.config.budgetRanges,
          selectedId: state.selectedBudgetId,
          onChanged: (value) {
            context.read<OnboardingBloc>().add(SelectBudget(value));
          },
          onNext: () {
            context.read<OnboardingBloc>().add(NextStep());
          },
          onBack: () {
            context.read<OnboardingBloc>().add(PreviousStep());
          },
          onSkip: () {
            context.read<OnboardingBloc>().add(SkipOnboarding());
          },
        ),
        RecommendationsSheet(
          content: state.config.recommendationsContent,
          stock: state.config.stock,
          topUpCard: state.config.topUpCard,
          watchlistCard: state.config.watchlistCard,
          onNext: () {
            context.read<OnboardingBloc>().add(FinishOnboarding());
          },
          onBack: () {
            context.read<OnboardingBloc>().add(PreviousStep());
          },
          onSkip: () {
            context.read<OnboardingBloc>().add(SkipOnboarding());
          },
        ),
      ],
    );
  }
}
