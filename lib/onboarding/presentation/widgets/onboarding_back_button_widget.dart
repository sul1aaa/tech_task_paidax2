import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

/// Shared back button used across all onboarding sheets.
class OnboardingBackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const OnboardingBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 18,
        color: PaidaxColors.primaryText,
      ),
    );
  }
}
