import 'package:flutter/material.dart';

import '../themes/theme.dart';

/// Scaffold for each onboarding step inside a modal bottom sheet.
/// No progress bar. Clean header with back + skip only.
class OnboardingScaffold extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final String title;
  final String subtitle;
  final Widget body;
  final String buttonLabel;
  final VoidCallback onNext;
  final VoidCallback? onBack;
  final VoidCallback? onSkip;
  final bool buttonEnabled;

  const OnboardingScaffold({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.onNext,
    this.buttonLabel = 'Продолжить',
    this.onBack,
    this.onSkip,
    this.buttonEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Top bar: back + skip ─────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          child: Row(
            children: [
              if (onBack != null)
                _BackButton(onTap: onBack!)
              else
                const SizedBox(width: 40),
              const Spacer(),
              if (onSkip != null)
                GestureDetector(
                  onTap: onSkip,
                  child: const Text(
                    'Пропустить',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: PaidaxColors.primary,
                    ),
                  ),
                ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // ── Title block ───────────────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: PaidaxColors.primaryText,
                  height: 1.15,
                ),
              ),
              Visibility(
                visible: subtitle.isNotEmpty,
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: PaidaxColors.secondaryText,
                      height: 1.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 24),

        // ── Scrollable body ───────────────────────────────────────────────
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            child: body,
          ),
        ),

        // ── CTA button ────────────────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20)
              .copyWith(top: 12, bottom: 28),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: buttonEnabled ? 1.0 : 0.4,
            child: FilledButton(
              onPressed: buttonEnabled ? onNext : null,
              child: Text(buttonLabel),
            ),
          ),
        ),
      ],
    );
  }
}

// ── Back button ───────────────────────────────────────────────────────────────

class _BackButton extends StatelessWidget {
  final VoidCallback onTap;
  const _BackButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: PaidaxColors.greyBg,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 18,
          color: PaidaxColors.primaryText,
        ),
      ),
    );
  }
}
