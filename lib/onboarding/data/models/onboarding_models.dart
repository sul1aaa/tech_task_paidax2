import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_models.freezed.dart';
part 'onboarding_models.g.dart';

@freezed
class StockRecommendationModel with _$StockRecommendationModel {
  const factory StockRecommendationModel({
    required String name,
    required String ticker,
    required String exchange,
    required String price,
    required String changePercent,
    required bool isPositive,
    required String imagePath,
  }) = _StockRecommendationModel;

  factory StockRecommendationModel.fromJson(Map<String, dynamic> json) =>
      _$StockRecommendationModelFromJson(json);
}

@freezed
class ActionCardModel with _$ActionCardModel {
  const factory ActionCardModel({
    required String title,
    required String subtitle,
    required String iconPath,
  }) = _ActionCardModel;

  factory ActionCardModel.fromJson(Map<String, dynamic> json) =>
      _$ActionCardModelFromJson(json);
}

@freezed
class BudgetRangeModel with _$BudgetRangeModel {
  const factory BudgetRangeModel({
    required String id,
    required String label,
    required String sublabel,
  }) = _BudgetRangeModel;

  factory BudgetRangeModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetRangeModelFromJson(json);
}

@freezed
class GoalOptionModel with _$GoalOptionModel {
  const factory GoalOptionModel({
    required String id,
    required String label,
    required String icon,
  }) = _GoalOptionModel;

  factory GoalOptionModel.fromJson(Map<String, dynamic> json) =>
      _$GoalOptionModelFromJson(json);
}

@freezed
class RecommendationsContent with _$RecommendationsContent {
  const factory RecommendationsContent({
    required String title,
    required String emptyBalanceText,
  }) = _RecommendationsContent;

  factory RecommendationsContent.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsContentFromJson(json);
}

@freezed
class BudgetContent with _$BudgetContent {
  const factory BudgetContent({
    required String title,
    required String infoNote,
  }) = _BudgetContent;

  factory BudgetContent.fromJson(Map<String, dynamic> json) =>
      _$BudgetContentFromJson(json);
}

@freezed
class ExperienceContent with _$ExperienceContent {
  const factory ExperienceContent({
    required String title,
    required String subtitle,
    required List<ExperienceLevelModel> levels,
  }) = _ExperienceContent;

  factory ExperienceContent.fromJson(Map<String, dynamic> json) =>
      _$ExperienceContentFromJson(json);
}

@freezed
class GoalsContent with _$GoalsContent {
  const factory GoalsContent({
    required String title,
    required String subtitle,
  }) = _GoalsContent;

  factory GoalsContent.fromJson(Map<String, dynamic> json) =>
      _$GoalsContentFromJson(json);
}

@freezed
class ExperienceLevelModel with _$ExperienceLevelModel {
  const factory ExperienceLevelModel({
    required String id,
    required String label,
    required String description,
    required String iconPath,
  }) = _ExperienceLevelModel;

  factory ExperienceLevelModel.fromJson(Map<String, dynamic> json) =>
      _$ExperienceLevelModelFromJson(json);
}

@freezed
class OnboardingConfigModel with _$OnboardingConfigModel {
  const factory OnboardingConfigModel({
    // Step 0 — грузится при открытии, всегда есть
    required ExperienceContent experienceContent,

    // Step 1 — грузится при переходе на goals
    GoalsContent? goalsContent,
    @Default([]) List<GoalOptionModel> goals,

    // Step 2 — грузится при переходе на budget
    BudgetContent? budgetContent,
    @Default([]) List<BudgetRangeModel> budgetRanges,

    // Step 3 — грузится при переходе на recommendations
    RecommendationsContent? recommendationsContent,
    StockRecommendationModel? stock,
    ActionCardModel? topUpCard,
    ActionCardModel? watchlistCard,
  }) = _OnboardingConfigModel;

  factory OnboardingConfigModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingConfigModelFromJson(json);
}

@freezed
class GoalsStepData with _$GoalsStepData {
  const factory GoalsStepData({
    required GoalsContent content,
    required List<GoalOptionModel> goals,
  }) = _GoalsStepData;

  factory GoalsStepData.fromJson(Map<String, dynamic> json) =>
      _$GoalsStepDataFromJson(json);
}

@freezed
class BudgetStepData with _$BudgetStepData {
  const factory BudgetStepData({
    required BudgetContent content,
    required List<BudgetRangeModel> budgetRanges,
  }) = _BudgetStepData;

  factory BudgetStepData.fromJson(Map<String, dynamic> json) =>
      _$BudgetStepDataFromJson(json);
}

@freezed
class RecommendationsStepData with _$RecommendationsStepData {
  const factory RecommendationsStepData({
    required RecommendationsContent content,
    required StockRecommendationModel stock,
    required ActionCardModel topUpCard,
    required ActionCardModel watchlistCard,
  }) = _RecommendationsStepData;

  factory RecommendationsStepData.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsStepDataFromJson(json);
}
