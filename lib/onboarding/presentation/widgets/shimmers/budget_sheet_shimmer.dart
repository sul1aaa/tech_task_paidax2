import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/shimmer_box.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class BudgetSheetShimmer extends StatelessWidget {
  const BudgetSheetShimmer({super.key});

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
            // Title — two lines to match multiline title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerBox(width: 220, height: 17, borderRadius: 10),
                  SizedBox(height: 6),
                  ShimmerBox(width: 160, height: 17, borderRadius: 10),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Info note
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ShimmerBox(width: 260, height: 18, borderRadius: 8),
            ),
            const SizedBox(height: 8),
            // 3 budget tiles
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: List.generate(
                    3,
                    (_) => const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: _BudgetTileShimmer(),
                    ),
                  ),
                ),
              ),
            ),
            // Info note box
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Container(
                decoration: BoxDecoration(
                  color: PaidaxColors.bg,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: PaidaxColors.border),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  child: ShimmerBox(
                      width: double.infinity, height: 14, borderRadius: 8),
                ),
              ),
            ),
            // Next button
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const ShimmerBox(
                  width: double.infinity, height: 56, borderRadius: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _BudgetTileShimmer extends StatelessWidget {
  const _BudgetTileShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: PaidaxColors.bg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: PaidaxColors.border),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShimmerBox(width: 80, height: 18, borderRadius: 8),
                SizedBox(height: 8),
                ShimmerBox(width: 140, height: 14, borderRadius: 8),
              ],
            ),
          ),
          SizedBox(width: 12),
          ShimmerBox(width: 24, height: 24, borderRadius: 12),
        ],
      ),
    );
  }
}
