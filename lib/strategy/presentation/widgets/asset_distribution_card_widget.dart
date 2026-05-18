// lib/strategy/presentation/widgets/asset_distribution_card.dart

import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/strategy/data/models/etf_assets_model.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/app_divider_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class AssetDistributionCard extends StatefulWidget {
  final List<EtfAsset> assets;

  const AssetDistributionCard({
    super.key,
    required this.assets,
  });

  @override
  State<AssetDistributionCard> createState() => _AssetDistributionCardState();
}

class _AssetDistributionCardState extends State<AssetDistributionCard> {
  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final visibleAssets =
        _showAll ? widget.assets : widget.assets.take(3).toList();

    return Container(
      padding: EdgeInsets.all(19).copyWith(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: PaidaxColors.divider, width: 0.65),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            offset: Offset(0, 1),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ─── Card Header ────────────────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Распределение активов', style: theme.titleSmall),
              Text(
                '${widget.assets.length} ETF',
                style: theme.bodySmall?.copyWith(
                  color: PaidaxColors.secondaryText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // ─── Color Bar ───────────────────────────────────────────────
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Row(
              children: widget.assets.asMap().entries.map((entry) {
                final index = entry.key;
                final asset = entry.value;
                final isLast = index == widget.assets.length - 1;

                return Expanded(
                  flex: asset.percentage,
                  child: Container(
                    height: 8,
                    margin: EdgeInsets.only(right: isLast ? 0 : 2),
                    color: asset.color,
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 16),

          // ─── ETF List ────────────────────────────────────────────────
          ...visibleAssets.asMap().entries.map((entry) {
            final index = entry.key;
            final asset = entry.value;

            return Column(
              children: [
                Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                          color: asset.color,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(asset.ticker, style: theme.titleSmall),
                            Text(
                              asset.description,
                              style: theme.bodySmall?.copyWith(
                                color: PaidaxColors.secondaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '${asset.percentage}%',
                        style: theme.titleSmall,
                      ),
                    ],
                  ),
                ),
                if (index < visibleAssets.length - 1)
                  const AppDivider(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                  ),
              ],
            );
          }),

          // ─── Show All Button ─────────────────────────────────────────
          AppDivider(
            padding: const EdgeInsets.symmetric(horizontal: 0),
          ),
          GestureDetector(
            onTap: () => setState(() => _showAll = !_showAll),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 13),
              child: Center(
                child: Text(
                  _showAll ? 'Скрыть' : 'И другие акции',
                  style: theme.bodyMedium?.copyWith(
                      color: PaidaxColors.secondaryText, fontSize: 13),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
