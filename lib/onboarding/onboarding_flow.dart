import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_task_paidax2/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/experience_sheet_shimmer.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/goals_sheet_shimmer.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/budget_sheet_shimmer.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/recommendations_sheet_shimmer.dart';

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
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingBloc()..add(const FetchConfig()),
      child: BlocListener<OnboardingBloc, OnboardingState>(
        listenWhen: (previous, current) {
          if (previous is OnboardingLoaded && current is OnboardingLoaded) {
            // Navigate immediately when loading starts (to show shimmer)
            // and also when loading finishes (to show real content)
            return previous.stepLoading != current.stepLoading ||
                previous.currentStep != current.currentStep;
          }
          return current is OnboardingCompleted;
        },
        listener: (context, state) {
          if (state is OnboardingLoaded) {
            if (state.stepLoading) {
              // Go to next page immediately to show shimmer while fetching
              _navigateToPage(state.currentStep + 1);
            } else {
              // Data loaded — jump to the confirmed current step
              _navigateToPage(state.currentStep);
            }
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

  Widget _buildStepWidget(BuildContext context, int stepIndex) {
    // Show shimmer on the next step page while its data is loading
    final isLoadingThisStep =
        state.stepLoading && stepIndex == state.currentStep + 1;

    if (isLoadingThisStep) {
      switch (stepIndex) {
        case 1:
          return const GoalsSheetShimmer();
        case 2:
          return const BudgetSheetShimmer();
        case 3:
          return const RecommendationsSheetShimmer();
        default:
          return const SizedBox.shrink();
      }
    }

    switch (stepIndex) {
      case 0:
        return ExperienceSheet(
          content: state.config.experienceContent,
          selected: state.selectedExperienceId,
          onChanged: (value) {
            context.read<OnboardingBloc>().add(SelectExperience(value));
          },
          onNext: () => context.read<OnboardingBloc>().add(const NextStep()),
          onSkip: () =>
              context.read<OnboardingBloc>().add(const SkipOnboarding()),
        );

      case 1:
        final goalsContent = state.config.goalsContent;
        if (goalsContent == null) return const GoalsSheetShimmer();
        return GoalsSheet(
          content: goalsContent,
          goals: state.config.goals,
          selectedIds: state.selectedGoalIds,
          onToggle: (id) {
            context.read<OnboardingBloc>().add(ToggleGoal(id));
          },
          onNext: () => context.read<OnboardingBloc>().add(const NextStep()),
          onBack: () =>
              context.read<OnboardingBloc>().add(const PreviousStep()),
          onSkip: () =>
              context.read<OnboardingBloc>().add(const SkipOnboarding()),
        );

      case 2:
        final budgetContent = state.config.budgetContent;
        if (budgetContent == null) return const BudgetSheetShimmer();
        return BudgetSheet(
          content: budgetContent,
          budgetRanges: state.config.budgetRanges,
          selectedId: state.selectedBudgetId,
          onChanged: (value) {
            context.read<OnboardingBloc>().add(SelectBudget(value));
          },
          onNext: () => context.read<OnboardingBloc>().add(const NextStep()),
          onBack: () =>
              context.read<OnboardingBloc>().add(const PreviousStep()),
          onSkip: () =>
              context.read<OnboardingBloc>().add(const SkipOnboarding()),
        );

      case 3:
        final recommendationsContent = state.config.recommendationsContent;
        final stock = state.config.stock;
        final topUpCard = state.config.topUpCard;
        final watchlistCard = state.config.watchlistCard;
        if (recommendationsContent == null ||
            stock == null ||
            topUpCard == null ||
            watchlistCard == null) {
          return const RecommendationsSheetShimmer();
        }
        return RecommendationsSheet(
          content: recommendationsContent,
          stock: stock,
          topUpCard: topUpCard,
          watchlistCard: watchlistCard,
          onNext: () =>
              context.read<OnboardingBloc>().add(const FinishOnboarding()),
          onBack: () =>
              context.read<OnboardingBloc>().add(const PreviousStep()),
          onSkip: () =>
              context.read<OnboardingBloc>().add(const SkipOnboarding()),
        );

      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildStepWidget(context, 0),
        _buildStepWidget(context, 1),
        _buildStepWidget(context, 2),
        _buildStepWidget(context, 3),
      ],
    );
  }
}
