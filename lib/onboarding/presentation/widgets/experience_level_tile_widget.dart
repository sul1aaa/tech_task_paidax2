import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/experience_tile_widget.dart';

class ExperienceLevelSelector extends StatelessWidget {
  final List<ExperienceLevelModel> levels;
  final String? selectedId;
  final ValueChanged<String> onChanged;

  const ExperienceLevelSelector({
    super.key,
    required this.levels,
    required this.selectedId,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: levels
          .map((level) => ExperienceTile(
                level: level,
                isSelected: selectedId == level.id,
                onTap: () => onChanged(level.id),
              ))
          .toList(),
    );
  }
}
