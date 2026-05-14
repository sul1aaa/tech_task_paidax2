import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';

class ActionCard extends StatelessWidget {
  final ActionCardModel data;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Color? borderColor;
  final List<BoxShadow>? shadows;

  const ActionCard({
    super.key,
    required this.data,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.borderColor,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 34),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
      decoration: BoxDecoration(
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 2)
            : null,
        borderRadius: BorderRadius.circular(14),
        color: backgroundColor,
        boxShadow: shadows,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: titleColor, letterSpacing: -0.31)),
                Text(data.subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: subtitleColor)),
              ],
            ),
          ),
          SizedBox(
            height: 28,
            width: 28,
            child: Image.asset(data.iconPath),
          ),
        ],
      ),
    );
  }
}
