import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class ParamRow extends StatelessWidget {
  final String label;
  final String value;
  final TextTheme theme;

  const ParamRow({
    super.key,
    required this.label,
    required this.value,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.bodySmall
                ?.copyWith(color: PaidaxColors.secondaryText, fontSize: 13),
          ),
          Text(
            value,
            style: theme.bodyMedium
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
