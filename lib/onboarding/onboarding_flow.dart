import 'package:flutter/material.dart';

import 'sheets/experience_sheet.dart';
import 'sheets/goals_sheet.dart';
import 'sheets/budget_sheet.dart';
import 'sheets/recommendations_sheet.dart';
import 'widgets/experience_level_tile.dart';

// ── State ─────────────────────────────────────────────────────────────────────

class _OnboardingState {
  final ExperienceLevel? experience;
  final Set<String> goalIds;
  final String? budgetId;

  const _OnboardingState({
    this.experience,
    this.goalIds = const {},
    this.budgetId,
  });

  _OnboardingState copyWith({
    ExperienceLevel? experience,
    Set<String>? goalIds,
    String? budgetId,
  }) {
    return _OnboardingState(
      experience: experience ?? this.experience,
      goalIds: goalIds ?? this.goalIds,
      budgetId: budgetId ?? this.budgetId,
    );
  }
}

// ── Flow ──────────────────────────────────────────────────────────────────────

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final _pageController = PageController();
  int _currentStep = 0;
  _OnboardingState _data = const _OnboardingState();

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
        ),
      ],
    );
  }
}
