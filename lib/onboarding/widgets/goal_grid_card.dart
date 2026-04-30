import 'package:flutter/material.dart';

import '../../themes/theme.dart';

class GoalOption {
  final String id;
  final String label;
  final IconData icon;

  const GoalOption({
    required this.id,
    required this.label,
    required this.icon,
  });
}

/// 2×2 grid of tappable goal tiles. Multi-select.
class GoalGrid extends StatelessWidget {
  final List<GoalOption> options;
  final Set<String> selectedIds;
  final ValueChanged<String> onToggle;

  const GoalGrid({
    super.key,
    required this.options,
    required this.selectedIds,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.15,
      children: options
          .map((opt) => _GoalGridTile(
                option: opt,
                isSelected: selectedIds.contains(opt.id),
                onTap: () => onToggle(opt.id),
              ))
          .toList(),
    );
  }
}

class _GoalGridTile extends StatelessWidget {
  final GoalOption option;
  final bool isSelected;
  final VoidCallback onTap;

  const _GoalGridTile({
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        height: 160,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected
              ? PaidaxColors.primary.withOpacity(0.05)
              : Color(0xffF6F6F8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top row: icon + checkmark
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? PaidaxColors.primary.withOpacity(0.12)
                        : Color(0xffE5E7EB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    option.icon,
                    size: 20,
                    color: isSelected
                        ? PaidaxColors.primary
                        : PaidaxColors.secondaryText,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            // Label
            Text(
              option.label,
              style: TextStyle(
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.w700,
                color: isSelected
                    ? PaidaxColors.primary
                    : PaidaxColors.primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
