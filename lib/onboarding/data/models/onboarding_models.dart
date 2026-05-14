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
    required StockRecommendationModel stock,
    required ActionCardModel topUpCard,
    required ActionCardModel watchlistCard,
    required List<BudgetRangeModel> budgetRanges,
    required List<GoalOptionModel> goals,
    required RecommendationsContent recommendationsContent,
    required BudgetContent budgetContent,
    required ExperienceContent experienceContent,
    required GoalsContent goalsContent,
  }) = _OnboardingConfigModel;

  factory OnboardingConfigModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingConfigModelFromJson(json);
}
