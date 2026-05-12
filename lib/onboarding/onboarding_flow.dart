import 'package:flutter/material.dart';

import 'presentation/sheets/experience_sheet.dart';
import 'presentation/sheets/goals_sheet.dart';
import 'presentation/sheets/budget_sheet.dart';
import 'presentation/sheets/recommendations_sheet.dart';
import 'presentation/widgets/experience_level_tile_widget.dart';

class OnboardingData {
  final ExperienceLevel? experience;
  final Set<String> goalIds;
  final String? budgetId;

  const OnboardingData({
    this.experience,
    this.goalIds = const {},
    this.budgetId,
  });

  OnboardingData copyWith({
    ExperienceLevel? experience,
    Set<String>? goalIds,
    String? budgetId,
  }) {
    return OnboardingData(
      experience: experience ?? this.experience,
      goalIds: goalIds ?? this.goalIds,
      budgetId: budgetId ?? this.budgetId,
    );
  }
}

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final _pageController = PageController();
  int _currentStep = 0;
  OnboardingData _data = const OnboardingData();

  static const _totalSteps = 4;

  void _next() {
    if (_currentStep < _totalSteps - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).pop();
    }
  }

  void _back() {
    if (_currentStep > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    }
  }

  void _skip() => Navigator.of(context).pop();

  void _toggleGoal(String id) {
    final updated = Set<String>.from(_data.goalIds);
    if (updated.contains(id)) {
      updated.remove(id);
    } else {
      updated.add(id);
    }
    setState(() => _data = _data.copyWith(goalIds: updated));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (i) => setState(() => _currentStep = i),
      children: [
        ExperienceSheet(
          selected: _data.experience,
          onChanged: (v) =>
              setState(() => _data = _data.copyWith(experience: v)),
          onNext: _next,
          onSkip: _skip,
        ),
        GoalsSheet(
          selectedIds: _data.goalIds,
          onToggle: _toggleGoal,
          onNext: _next,
          onBack: _back,
          onSkip: _skip,
        ),
        BudgetSheet(
          selectedId: _data.budgetId,
          onChanged: (v) => setState(() => _data = _data.copyWith(budgetId: v)),
          onNext: _next,
          onBack: _back,
          onSkip: _skip,
        ),
        RecommendationsSheet(
          onNext: _next,
          onBack: _back,
          onSkip: _skip,
        ),
      ],
    );
  }
}
