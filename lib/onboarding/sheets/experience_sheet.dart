import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

import '../widgets/experience_level_tile.dart';

class ExperienceSheet extends StatelessWidget {
  final ExperienceLevel? selected;
  final ValueChanged<ExperienceLevel> onChanged;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const ExperienceSheet({
    super.key,
    required this.selected,
    required this.onChanged,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ── Header row ───────────────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
              .copyWith(top: 16, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: onSkip,
                child: const Text(
                  'Пропустить',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: PaidaxColors.primary,
                      letterSpacing: -0.23),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // ── Title — centered, large ──────────────────────────────────────
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Расскажите о себе',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: PaidaxColors.primaryText,
                height: 1.15,
                letterSpacing: -0.32),
          ),
        ),

        const SizedBox(height: 8),

        // ── Subtitle — centered, muted ───────────────────────────────────
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Ваш опыт поможет нам персонализировать инвестиционные рекомендации',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: PaidaxColors.secondaryText,
                height: 1.5,
                letterSpacing: -0.31),
          ),
        ),

        const SizedBox(height: 40),

        // ── Tiles ────────────────────────────────────────────────────────
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            child: ExperienceLevelSelector(
              selected: selected,
              onChanged: (level) {
                onChanged(level);
                onNext();
              },
            ),
          ),
        ),
      ],
    );
  }
}
