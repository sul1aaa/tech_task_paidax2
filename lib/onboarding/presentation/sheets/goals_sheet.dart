import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_back_button_widget.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_skip_button_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';
import '../widgets/goal_grid_card_widget.dart';

class GoalsSheet extends StatelessWidget {
  final List<GoalOptionModel> goals;
  final GoalsContent content;
  final Set<String> selectedIds;
  final ValueChanged<String> onToggle;
  final VoidCallback onNext;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  const GoalsSheet({
    super.key,
    required this.goals,
    required this.content,
    required this.selectedIds,
    required this.onToggle,
    required this.onNext,
    required this.onBack,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OnboardingBackButton(onTap: onBack),
              OnboardingSkipButton(onSkip: onSkip),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(content.title,
              style: Theme.of(context).textTheme.displayLarge),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            content.subtitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 18,
                color: PaidaxColors.primaryText,
                letterSpacing: -0.44),
          ),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            child: GoalGrid(
              options: goals,
              selectedIds: selectedIds,
              onToggle: onToggle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
              .copyWith(top: 12, bottom: 24),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: selectedIds.isNotEmpty ? 1.0 : 0.4,
            child: FilledButton(
              onPressed: selectedIds.isNotEmpty ? onNext : null,
              child: const Text('Продолжить'),
            ),
          ),
        ),
      ],
    );
  }
}
