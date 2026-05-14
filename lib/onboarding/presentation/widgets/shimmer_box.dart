import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class ShimmerBox extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;

  const ShimmerBox({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: PaidaxColors.border,
      highlightColor: PaidaxColors.bg,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: PaidaxColors.border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
