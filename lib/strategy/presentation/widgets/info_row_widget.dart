import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;
  final TextTheme theme;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
    required this.theme,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.bodyMedium?.copyWith(
              color: PaidaxColors.secondaryText,
            ),
          ),
          Text(
            value,
            style: theme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: valueColor ?? PaidaxColors.primaryText,
            ),
          ),
        ],
      ),
    );
  }
}
