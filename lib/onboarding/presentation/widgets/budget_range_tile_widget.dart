import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/budget_tile_widget.dart';

class BudgetRangeSelector extends StatelessWidget {
  final List<BudgetRangeModel> budgetRanges;
  final String? selectedId;
  final ValueChanged<String> onChanged;

  const BudgetRangeSelector({
    super.key,
    required this.budgetRanges,
    required this.selectedId,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: budgetRanges
          .map((range) => BudgetTile(
                range: range,
                isSelected: selectedId == range.id,
                onTap: () => onChanged(range.id),
              ))
          .toList(),
    );
  }
}
