import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/documents/presentation/screens/document_updated_screen.dart';
import 'package:tech_task_paidax2/documents/presentation/screens/document_widgets_preview_screen.dart';

import '../../../themes/theme.dart';
import '../../onboarding_flow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showOnboarding(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (_) => const _OnboardingSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 3),

              // Logo / brand mark
              GestureDetector(
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: PaidaxColors.primary,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(
                    Icons.show_chart_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DocumentWidgetsPreviewScreen(),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              // Headline
              const Text(
                'Smart investing\nstarts here.',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: PaidaxColors.primaryText,
                  height: 1.15,
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 16),

              // Subtext
              const Text(
                'Build your personalised portfolio in minutes. '
                'We\'ll match you with stocks that fit your goals.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: PaidaxColors.secondaryText,
                  height: 1.6,
                ),
              ),

              const Spacer(flex: 2),

              // Feature pills
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: const [
                  _FeaturePill(icon: Icons.shield_outlined, label: 'Secure'),
                  _FeaturePill(
                      icon: Icons.auto_awesome_rounded, label: 'AI-powered'),
                  _FeaturePill(
                      icon: Icons.trending_up_rounded, label: 'Real-time data'),
                ],
              ),

              const SizedBox(height: 40),

              // CTA
              FilledButton(
                onPressed: () => _showOnboarding(context),
                child: const Text('Get Started'),
              ),

              const SizedBox(height: 12),

              // Secondary action
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DocumentUpdatedScreen(
                          // Передаем функцию, которая выполнится ТОЛЬКО при нажатии кнопки внутри экрана
                          onGoBack: () => Navigator.pop(context),
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Already have an account? Sign in',
                    style: TextStyle(
                      fontSize: 14,
                      color: PaidaxColors.secondaryText,
                    ),
                  ),
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeaturePill extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FeaturePill({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: PaidaxColors.greyBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: PaidaxColors.primary),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: PaidaxColors.primaryText,
            ),
          ),
        ],
      ),
    );
  }
}

/// The bottom sheet wrapper that hosts the full onboarding flow.
class _OnboardingSheet extends StatelessWidget {
  const _OnboardingSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 623,
      decoration: const BoxDecoration(
        color: PaidaxColors.bg,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Drag handle
          const SizedBox(height: 12),
          Center(
            child: Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: PaidaxColors.divider,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // The onboarding flow fills the rest
          const Expanded(
            child: OnboardingFlow(),
          ),
        ],
      ),
    );
  }
}
