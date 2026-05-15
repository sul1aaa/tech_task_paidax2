import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class OnboardingSkipButton extends StatelessWidget {
  final VoidCallback? onSkip;

  const OnboardingSkipButton({
    super.key,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSkip,
      child: Text(
        'Пропустить',
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: PaidaxColors.primary,
            ),
      ),
    );
  }
}
