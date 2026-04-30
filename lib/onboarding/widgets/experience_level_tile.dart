import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

enum ExperienceLevel { beginner, intermediate, expert }

extension ExperienceLevelExt on ExperienceLevel {
  String get label {
    switch (this) {
      case ExperienceLevel.beginner:
        return 'Новичок';
      case ExperienceLevel.intermediate:
        return 'Инвестировал';
      case ExperienceLevel.expert:
        return 'Регулярно';
    }
  }

  String get description {
    switch (this) {
      case ExperienceLevel.beginner:
        return 'Только начинаю свой путь в мире инвестиций';
      case ExperienceLevel.intermediate:
        return 'Есть базовые знания и первый опыт сделок';
      case ExperienceLevel.expert:
        return 'Активно торгую и слежу за рынком';
    }
  }

  IconData get icon {
    switch (this) {
      case ExperienceLevel.beginner:
        return Icons.eco_outlined;
      case ExperienceLevel.intermediate:
        return Icons.trending_up_rounded;
      case ExperienceLevel.expert:
        return Icons.bar_chart_rounded;
    }
  }
}

class ExperienceLevelSelector extends StatelessWidget {
  final ExperienceLevel? selected;
  final ValueChanged<ExperienceLevel> onChanged;

  const ExperienceLevelSelector({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ExperienceLevel.values
          .map((level) => _ExperienceTile(
                level: level,
                isSelected: selected == level,
                onTap: () => onChanged(level),
              ))
          .toList(),
    );
  }
}

class _ExperienceTile extends StatelessWidget {
  final ExperienceLevel level;
  final bool isSelected;
  final VoidCallback onTap;

  const _ExperienceTile({
    required this.level,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        height: 107,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: isSelected
              ? PaidaxColors.primary.withOpacity(0.05)
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? PaidaxColors.primary : const Color(0xFFE0E0E0),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            // Icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: isSelected
                    ? PaidaxColors.primary.withOpacity(0.1)
                    : PaidaxColors.greyBg,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                level.icon,
                size: 20,
                color: isSelected
                    ? PaidaxColors.primary
                    : PaidaxColors.secondaryText,
              ),
            ),
            const SizedBox(width: 14),

            // Labels
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    level.label,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: PaidaxColors.primaryText,
                        letterSpacing: -0.43),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    level.description,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: PaidaxColors.secondaryText,
                        height: 1.3,
                        letterSpacing: -0.15),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

            // Radio circle
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: isSelected
                      ? PaidaxColors.primary
                      : const Color(0xFFCCCCCC),
                  width: isSelected ? 2 : 1.5,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: PaidaxColors.primary,
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
