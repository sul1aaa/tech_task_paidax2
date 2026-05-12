import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_back_button_widget.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_skip_button_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

import '../widgets/budget_range_tile_widget.dart';

class BudgetSheet extends StatelessWidget {
  final String? selectedId;
  final ValueChanged<String> onChanged;
  final VoidCallback onNext;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  const BudgetSheet({
    super.key,
    required this.selectedId,
    required this.onChanged,
    required this.onNext,
    required this.onBack,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
              .copyWith(top: 16, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OnboardingBackButton(onTap: onBack),
              OnboardingSkipButton(onSkip: onSkip),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('С какой суммы\nначнём?', style: theme.displayMedium),
        ),
        const SizedBox(height: 4),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                BudgetRangeSelector(
                  selectedId: selectedId,
                  onChanged: onChanged,
                ),
                const SizedBox(height: 12),
                // Info note
                Container(
                  decoration: BoxDecoration(
                    color: PaidaxColors.infoNoteBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.info_outline_rounded,
                          size: 15,
                          color: PaidaxColors.primary,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Мы подберём активы на основе вашего выбора.',
                            style: theme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
              .copyWith(top: 12, bottom: 28),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: selectedId != null ? 1.0 : 0.4,
            child: FilledButton(
              onPressed: selectedId != null ? onNext : null,
              child: const Text('Продолжить'),
            ),
          ),
        ),
      ],
    );
  }
}
