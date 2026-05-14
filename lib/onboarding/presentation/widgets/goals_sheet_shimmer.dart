import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmer_box.dart';

class GoalsSheetShimmer extends StatelessWidget {
  const GoalsSheetShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ShimmerBox(width: 48, height: 48, borderRadius: 16),
              ShimmerBox(width: 90, height: 32, borderRadius: 20),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ShimmerBox(width: 200, height: 32, borderRadius: 10),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ShimmerBox(width: 180, height: 18, borderRadius: 8),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                4,
                (_) => const Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: _GoalCardShimmer(),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
              .copyWith(top: 12, bottom: 24),
          child:
              ShimmerBox(width: double.infinity, height: 56, borderRadius: 16),
        ),
      ],
    );
  }
}

class _GoalCardShimmer extends StatelessWidget {
  const _GoalCardShimmer();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child:
              ShimmerBox(width: double.infinity, height: 100, borderRadius: 16),
        ),
        SizedBox(width: 12),
        Expanded(
          child:
              ShimmerBox(width: double.infinity, height: 100, borderRadius: 16),
        ),
      ],
    );
  }
}
