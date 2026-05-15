import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/shimmer_box.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class ExperienceSheetShimmer extends StatelessWidget {
  const ExperienceSheetShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: PaidaxColors.onboardingBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Skip button placeholder — right aligned, same as ExperienceSheet
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24)
                  .copyWith(top: 16, bottom: 0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ShimmerBox(width: 60, height: 32, borderRadius: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ShimmerBox(width: 200, height: 28, borderRadius: 8),
            ),
            const SizedBox(height: 12),
            // Subtitle — two lines
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  ShimmerBox(
                      width: double.infinity, height: 16, borderRadius: 6),
                  SizedBox(height: 6),
                  ShimmerBox(width: 160, height: 16, borderRadius: 6),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // 3 experience level tiles
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children:
                      List.generate(3, (_) => const _ExperienceTileShimmer()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExperienceTileShimmer extends StatelessWidget {
  const _ExperienceTileShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: PaidaxColors.bg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: PaidaxColors.border, width: 1),
      ),
      child: const Row(
        children: [
          ShimmerBox(width: 40, height: 40, borderRadius: 10),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShimmerBox(width: 100, height: 16, borderRadius: 6),
                SizedBox(height: 8),
                ShimmerBox(width: 180, height: 13, borderRadius: 6),
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
