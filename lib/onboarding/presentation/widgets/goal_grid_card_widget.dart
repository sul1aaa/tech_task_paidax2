import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/goal_grid_tile_widget.dart';

class GoalGrid extends StatelessWidget {
  final List<GoalOptionModel> options;
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
          .map((opt) => GoalGridTile(
                option: opt,
                isSelected: selectedIds.contains(opt.id),
                onTap: () => onToggle(opt.id),
              ))
          .toList(),
    );
  }
}
