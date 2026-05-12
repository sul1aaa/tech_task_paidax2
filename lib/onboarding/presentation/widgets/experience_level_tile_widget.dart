import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/experience_tile_widget.dart';

enum ExperienceLevel { beginner, intermediate, expert }

extension ExperienceLevelExt on ExperienceLevel {
  String get label {
    switch (this) {
      case ExperienceLevel.beginner:
        return 'Новичок';
      case ExperienceLevel.intermediate:
        return 'Инвестировал';
      case ExperienceLevel.expert:
        return 'Регулярно';
    }
  }

  String get description {
    switch (this) {
      case ExperienceLevel.beginner:
        return 'Только начинаю свой путь в мире инвестиций';
      case ExperienceLevel.intermediate:
        return 'Есть базовые знания и первый опыт сделок';
      case ExperienceLevel.expert:
        return 'Активно торгую и слежу за рынком';
    }
  }

  String get icon {
    switch (this) {
      case ExperienceLevel.beginner:
        return 'assets/images/icon_plant.png';
      case ExperienceLevel.intermediate:
        return 'assets/images/icon_arrow.png';
      case ExperienceLevel.expert:
        return 'assets/images/icon_stats.png';
    }
  }
}

class ExperienceLevelSelector extends StatelessWidget {
  final ExperienceLevel? selected;
  final ValueChanged<ExperienceLevel> onChanged;

  const ExperienceLevelSelector({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ExperienceLevel.values
          .map((level) => ExperienceTile(
                level: level,
                isSelected: selected == level,
                onTap: () => onChanged(level),
              ))
          .toList(),
    );
  }
}
