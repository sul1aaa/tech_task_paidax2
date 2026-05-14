import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmer_box.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class RecommendationsSheetShimmer extends StatelessWidget {
  const RecommendationsSheetShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: PaidaxColors.onboardingBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ShimmerBox(width: 48, height: 48, borderRadius: 16),
                  ShimmerBox(width: 90, height: 32, borderRadius: 20),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: const ShimmerBox(width: 180, height: 28, borderRadius: 10),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: PaidaxColors.bg),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: PaidaxColors.border, width: 0.2),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: PaidaxColors.stockCardShadow,
                          blurRadius: 30,
                          spreadRadius: 0,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerBox(
                            width: double.infinity,
                            height: 180,
                            borderRadius: 0),
                        Container(
                          padding: const EdgeInsets.all(20),
                          color: PaidaxColors.bg,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    ShimmerBox(
                                        width: 120,
                                        height: 18,
                                        borderRadius: 8),
                                    SizedBox(height: 8),
                                    ShimmerBox(
                                        width: 140,
                                        height: 14,
                                        borderRadius: 8),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
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
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ShimmerBox(width: 140, height: 18, borderRadius: 8),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  _ActionCardShimmer(),
                  SizedBox(height: 16),
                  _ActionCardShimmer(),
                ],
              ),
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
      decoration: BoxDecoration(
        color: PaidaxColors.bg,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: PaidaxColors.border, width: 0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: const [
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
      ),
    );
  }
}
