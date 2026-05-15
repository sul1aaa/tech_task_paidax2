import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/shimmer_box.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class RecommendationsSheetShimmer extends StatelessWidget {
  const RecommendationsSheetShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: PaidaxColors.onboardingBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back + Skip row
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerBox(width: 24, height: 24, borderRadius: 16),
                  ShimmerBox(width: 60, height: 24, borderRadius: 20),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: ShimmerBox(width: 180, height: 28, borderRadius: 10),
            ),
            const SizedBox(height: 6),
            // Stock card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: PaidaxColors.border, width: 0.2),
                  boxShadow: const [
                    BoxShadow(
                      color: PaidaxColors.stockCardShadow,
                      blurRadius: 30,
                      spreadRadius: 0,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image area
                      const ShimmerBox(
                          width: double.infinity, height: 180, borderRadius: 0),
                      Container(
                        padding: const EdgeInsets.all(20),
                        color: PaidaxColors.bg,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ShimmerBox(
                                    width: 120, height: 18, borderRadius: 8),
                                SizedBox(height: 8),
                                ShimmerBox(
                                    width: 100, height: 14, borderRadius: 8),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ShimmerBox(
                                    width: 80, height: 18, borderRadius: 8),
                                SizedBox(height: 8),
                                ShimmerBox(
                                    width: 60, height: 14, borderRadius: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Empty balance text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ShimmerBox(width: 140, height: 16, borderRadius: 8),
            ),
            const SizedBox(height: 16),
            // Top up action card
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: _ActionCardShimmer(),
            ),
            const SizedBox(height: 12),
            // Watchlist action card
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: _ActionCardShimmer(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionCardShimmer extends StatelessWidget {
  const _ActionCardShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: PaidaxColors.bg,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: PaidaxColors.border, width: 0.2),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBox(width: 140, height: 18, borderRadius: 8),
                SizedBox(height: 8),
                ShimmerBox(width: 180, height: 14, borderRadius: 8),
              ],
            ),
          ),
          SizedBox(width: 12),
          ShimmerBox(width: 40, height: 40, borderRadius: 12),
        ],
      ),
    );
  }
}
