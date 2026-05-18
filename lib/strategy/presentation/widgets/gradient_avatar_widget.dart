import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class GradientAvatarWidget extends StatelessWidget {
  final String initials;
  final double outerSize;
  final double? innerSize;

  const GradientAvatarWidget({
    super.key,
    required this.initials,
    required this.outerSize,
    this.innerSize,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: outerSize,
      height: outerSize,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1FBE93),
            Color(0xFF0B8A66),
            Color(0xFF086B50),
          ],
        ),
      ),
      child: Center(
        child: Container(
          width: innerSize,
          height: innerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0x38FFFFFF),
              width: 0.65,
            ),
          ),
          child: Center(
            child: Text(
              initials,
              style: theme.titleSmall?.copyWith(
                color: PaidaxColors.onPrimaryText,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
