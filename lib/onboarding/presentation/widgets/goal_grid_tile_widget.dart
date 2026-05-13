import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/goal_grid_card_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class GoalGridTile extends StatefulWidget {
  final GoalOption option;
  final bool isSelected;
  final VoidCallback onTap;

  const GoalGridTile({
    super.key,
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<GoalGridTile> createState() => _GoalGridTileState();
}

class _GoalGridTileState extends State<GoalGridTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        height: 160,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: widget.isSelected
              ? PaidaxColors.primary.withOpacity(0.05)
              : PaidaxColors.goalTileBg,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color:
                widget.isSelected ? PaidaxColors.primary : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: widget.isSelected
                    ? PaidaxColors.primary.withOpacity(0.12)
                    : PaidaxColors.goalIconBg,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                widget.option.icon,
                color: widget.isSelected
                    ? PaidaxColors.primary
                    : PaidaxColors.primaryText,
              ),
            ),
            const SizedBox(height: 24),
            Flexible(
              child: Text(
                widget.option.label,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: widget.isSelected
                          ? PaidaxColors.primary
                          : PaidaxColors.primaryText,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
