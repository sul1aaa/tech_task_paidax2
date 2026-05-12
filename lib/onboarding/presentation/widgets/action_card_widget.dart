import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Color? borderColor;
  final List<BoxShadow>? shadows;

  const ActionCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
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
                Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: titleColor)),
                Text(subtitle,
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
            child: Image.asset(iconPath),
          ),
        ],
      ),
    );
  }
}
