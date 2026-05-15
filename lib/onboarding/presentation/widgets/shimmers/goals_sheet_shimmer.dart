import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmers/shimmer_box.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class GoalsSheetShimmer extends StatelessWidget {
  const GoalsSheetShimmer({super.key});

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
            const SizedBox(height: 20),
            // Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ShimmerBox(width: 200, height: 32, borderRadius: 10),
            ),
            const SizedBox(height: 8),
            // Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ShimmerBox(width: 180, height: 18, borderRadius: 8),
            ),
            const SizedBox(height: 24),
            // 4 goal cards in 2x2 grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: List.generate(
                    2,
                    (_) => const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: _GoalRowShimmer(),
                    ),
                  ),
                ),
              ),
            ),
            // Next button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24)
                  .copyWith(top: 12, bottom: 28),
              child: const ShimmerBox(
                  width: double.infinity, height: 56, borderRadius: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _GoalRowShimmer extends StatelessWidget {
  const _GoalRowShimmer();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child:
              ShimmerBox(width: double.infinity, height: 140, borderRadius: 16),
        ),
        SizedBox(width: 12),
        Expanded(
          child:
              ShimmerBox(width: double.infinity, height: 140, borderRadius: 16),
        ),
      ],
    );
  }
}
