import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/budget_tile_widget.dart';

class BudgetRange {
  final String id;
  final String label;
  final String sublabel;

  const BudgetRange({
    required this.id,
    required this.label,
    required this.sublabel,
  });
}

const List<BudgetRange> budgetRanges = [
  BudgetRange(id: 'starter', label: '<50k ₸', sublabel: 'Легкий старт'),
  BudgetRange(
      id: 'casual', label: '50 – 200k ₸', sublabel: 'Оптимальный выбор'),
  BudgetRange(id: 'whale', label: '>200k ₸', sublabel: 'Премиальный портфель'),
];

class BudgetRangeSelector extends StatelessWidget {
  final String? selectedId;
  final ValueChanged<String> onChanged;

  const BudgetRangeSelector({
    super.key,
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
