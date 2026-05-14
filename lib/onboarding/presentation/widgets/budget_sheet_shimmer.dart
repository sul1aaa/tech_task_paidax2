import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/shimmer_box.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class BudgetSheetShimmer extends StatelessWidget {
  const BudgetSheetShimmer({super.key});

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
          child: ShimmerBox(width: 260, height: 34, borderRadius: 10),
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ShimmerBox(width: 220, height: 18, borderRadius: 8),
        ),
        const SizedBox(height: 24),
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
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 28),
          child:
              ShimmerBox(width: double.infinity, height: 56, borderRadius: 16),
        ),
      ],
    );
  }
}

class _BudgetTileShimmer extends StatelessWidget {
  const _BudgetTileShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        color: PaidaxColors.bg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: PaidaxColors.border),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: const [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShimmerBox(width: 100, height: 18, borderRadius: 8),
                  SizedBox(height: 8),
                  ShimmerBox(width: 160, height: 14, borderRadius: 8),
                ],
              ),
            ),
            SizedBox(width: 12),
            ShimmerBox(width: 24, height: 24, borderRadius: 12),
          ],
        ),
      ),
    );
  }
}
