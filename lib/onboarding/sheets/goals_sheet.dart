import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/widgets/onboarding_back_button.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

import '../widgets/goal_grid_card.dart';

const _goalOptions = [
  GoalOption(
      id: 'halal', label: 'Халяль', icon: 'assets/images/icon_star_black.png'),
  GoalOption(
      id: 'income', label: 'Доход', icon: 'assets/images/icon_arrow_black.png'),
  GoalOption(
      id: 'safety', label: 'Надёжность', icon: 'assets/images/icon_shield.png'),
  GoalOption(
      id: 'diversity',
      label: 'Разнообразие',
      icon: 'assets/images/icon_grid.png'),
];

class GoalsSheet extends StatelessWidget {
  final Set<String> selectedIds;
  final ValueChanged<String> onToggle;
  final VoidCallback onNext;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  const GoalsSheet({
    super.key,
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
        // ── Header row: back + skip ──────────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
              .copyWith(top: 16, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OnboardingBackButton(onTap: onBack),
              GestureDetector(
                onTap: onSkip,
                child: const Text(
                  'Пропустить',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: PaidaxColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // ── Title ────────────────────────────────────────────────────────
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Что для вас важно?',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: PaidaxColors.primaryText,
                height: 1.15,
                letterSpacing: -0.39),
          ),
        ),

        const SizedBox(height: 8),

        // ── Subtitle ─────────────────────────────────────────────────────
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Выберите одно или несколько',
            style: TextStyle(
                fontSize: 18,
                color: PaidaxColors.secondaryText,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.44),
          ),
        ),

        const SizedBox(height: 24),

        // ── 2×2 Grid ─────────────────────────────────────────────────────
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            child: GoalGrid(
              options: _goalOptions,
              selectedIds: selectedIds,
              onToggle: onToggle,
            ),
          ),
        ),

        // ── CTA ──────────────────────────────────────────────────────────
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
