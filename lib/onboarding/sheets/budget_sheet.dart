import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

import '../widgets/budget_range_tile.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Header row: back + skip ──────────────────────────────────────
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BackButton(onTap: onBack),
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

        const SizedBox(height: 20),

        // ── Title — left, slightly smaller ──────────────────────────────
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'С какой суммы\nначнём?',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: PaidaxColors.primaryText,
                height: 1.2,
                letterSpacing: -0.32),
          ),
        ),

        const SizedBox(height: 4),

        // ── Radio list ───────────────────────────────────────────────────
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
                      color: Color(0xffF9FAFB),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.info_outline_rounded,
                          size: 15,
                          color: PaidaxColors.primary,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Мы подберём активы на основе вашего выбора.',
                            style: TextStyle(
                                fontSize: 12,
                                color: PaidaxColors.secondaryText,
                                height: 1.4,
                                fontWeight: FontWeight.w400),
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

        // ── CTA ──────────────────────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 28),
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
