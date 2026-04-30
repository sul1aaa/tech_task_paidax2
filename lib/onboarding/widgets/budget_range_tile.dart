import 'package:flutter/material.dart';

import '../../themes/theme.dart';

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
  BudgetRange(
    id: 'starter',
    label: '<50k ₸',
    sublabel: 'Легкий старт',
  ),
  BudgetRange(
    id: 'casual',
    label: '50 – 200k ₸',
    sublabel: 'Оптимальный выбор',
  ),
  BudgetRange(
    id: 'whale',
    label: '>200k ₸',
    sublabel: 'Премиальный портфель',
  ),
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
          .map((range) => _BudgetTile(
                range: range,
                isSelected: selectedId == range.id,
                onTap: () => onChanged(range.id),
              ))
          .toList(),
    );
  }
}

class _BudgetTile extends StatelessWidget {
  final BudgetRange range;
  final bool isSelected;
  final VoidCallback onTap;

  const _BudgetTile({
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
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? PaidaxColors.primary : const Color(0xFFE0E0E0),
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
                  Text(
                    range.label,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: PaidaxColors.primaryText,
                        letterSpacing: -0.44),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    range.sublabel,
                    style: const TextStyle(
                        fontSize: 14,
                        color: PaidaxColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.15),
                  ),
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
