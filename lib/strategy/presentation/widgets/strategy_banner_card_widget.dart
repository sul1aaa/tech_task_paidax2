import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/strategy/data/models/strategy_banner_data_model.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class StrategyBannerCard extends StatelessWidget {
  final StrategyBannerData data;
  final VoidCallback? onTap;

  const StrategyBannerCard({
    super.key,
    required this.data,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: PaidaxColors.surfaceLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: theme.titleSmall?.copyWith(
                      color: PaidaxColors.primary, letterSpacing: -0.14),
                ),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    style: theme.bodySmall?.copyWith(
                      color: PaidaxColors.secondaryText,
                    ),
                    children: [
                      TextSpan(
                        text: data.returnRate,
                        style: theme.bodySmall?.copyWith(
                          color: PaidaxColors.shariaCompliantGreen,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' за год · от ${data.minAmount} · ${data.assetsCount} активов',
                        style: theme.bodySmall?.copyWith(
                          color: PaidaxColors.secondaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: PaidaxColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
