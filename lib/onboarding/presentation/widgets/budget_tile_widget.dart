import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/budget_range_tile_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class BudgetTile extends StatelessWidget {
  final BudgetRange range;
  final bool isSelected;
  final VoidCallback onTap;

  const BudgetTile({
    super.key,
    required this.range,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        height: 85,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
            // Labels
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(range.label,
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text(range.sublabel,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),

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
