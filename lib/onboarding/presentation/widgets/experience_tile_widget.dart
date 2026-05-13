import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/experience_level_tile_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class ExperienceTile extends StatelessWidget {
  final ExperienceLevel level;
  final bool isSelected;
  final VoidCallback onTap;

  const ExperienceTile({
    super.key,
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
              : PaidaxColors.bg,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? PaidaxColors.primary : PaidaxColors.border,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            // Icon
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: PaidaxColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(level.icon, color: PaidaxColors.primary),
            ),
            const SizedBox(width: 20),

            // Labels
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(level.label,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(level.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: PaidaxColors.secondaryText)),
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
                  color:
                      isSelected ? PaidaxColors.primary : PaidaxColors.border,
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
