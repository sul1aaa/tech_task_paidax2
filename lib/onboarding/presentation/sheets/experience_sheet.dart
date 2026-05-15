import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_skip_button_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

import '../widgets/experience_level_tile_widget.dart';

class ExperienceSheet extends StatelessWidget {
  final ExperienceContent content;
  final String? selected;
  final ValueChanged<String> onChanged;
  final VoidCallback? onNext;
  final VoidCallback? onSkip;

  const ExperienceSheet({
    super.key,
    required this.content,
    required this.selected,
    required this.onChanged,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
              .copyWith(top: 16, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [OnboardingSkipButton(onSkip: onSkip)],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            content.title,
            textAlign: TextAlign.center,
            style: theme.displayMedium,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            content.subtitle,
            textAlign: TextAlign.center,
            style: theme.bodyLarge?.copyWith(color: PaidaxColors.secondaryText),
          ),
        ),
        const SizedBox(height: 40),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            child: ExperienceLevelSelector(
              levels: content.levels,
              selectedId: selected,
              onChanged: (id) {
                onChanged(id);
                onNext?.call();
              },
            ),
          ),
        ),
      ],
    );
  }
}
