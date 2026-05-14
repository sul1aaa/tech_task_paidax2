// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockRecommendationModelImpl _$$StockRecommendationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StockRecommendationModelImpl(
      name: json['name'] as String,
      ticker: json['ticker'] as String,
      exchange: json['exchange'] as String,
      price: json['price'] as String,
      changePercent: json['changePercent'] as String,
      isPositive: json['isPositive'] as bool,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$StockRecommendationModelImplToJson(
        _$StockRecommendationModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ticker': instance.ticker,
      'exchange': instance.exchange,
      'price': instance.price,
      'changePercent': instance.changePercent,
      'isPositive': instance.isPositive,
      'imagePath': instance.imagePath,
    };

_$ActionCardModelImpl _$$ActionCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionCardModelImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      iconPath: json['iconPath'] as String,
    );

Map<String, dynamic> _$$ActionCardModelImplToJson(
        _$ActionCardModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'iconPath': instance.iconPath,
    };

_$BudgetRangeModelImpl _$$BudgetRangeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BudgetRangeModelImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      sublabel: json['sublabel'] as String,
    );

Map<String, dynamic> _$$BudgetRangeModelImplToJson(
        _$BudgetRangeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'sublabel': instance.sublabel,
    };

_$GoalOptionModelImpl _$$GoalOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GoalOptionModelImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$GoalOptionModelImplToJson(
        _$GoalOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'icon': instance.icon,
    };

_$RecommendationsContentImpl _$$RecommendationsContentImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationsContentImpl(
      title: json['title'] as String,
      emptyBalanceText: json['emptyBalanceText'] as String,
    );

Map<String, dynamic> _$$RecommendationsContentImplToJson(
        _$RecommendationsContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'emptyBalanceText': instance.emptyBalanceText,
    };

_$BudgetContentImpl _$$BudgetContentImplFromJson(Map<String, dynamic> json) =>
    _$BudgetContentImpl(
      title: json['title'] as String,
      infoNote: json['infoNote'] as String,
    );

Map<String, dynamic> _$$BudgetContentImplToJson(_$BudgetContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'infoNote': instance.infoNote,
    };

_$ExperienceContentImpl _$$ExperienceContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceContentImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      levels: (json['levels'] as List<dynamic>)
          .map((e) => ExperienceLevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExperienceContentImplToJson(
        _$ExperienceContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'levels': instance.levels,
    };

_$GoalsContentImpl _$$GoalsContentImplFromJson(Map<String, dynamic> json) =>
    _$GoalsContentImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$$GoalsContentImplToJson(_$GoalsContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
    };

_$ExperienceLevelModelImpl _$$ExperienceLevelModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceLevelModelImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      description: json['description'] as String,
      iconPath: json['iconPath'] as String,
    );

Map<String, dynamic> _$$ExperienceLevelModelImplToJson(
        _$ExperienceLevelModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'description': instance.description,
      'iconPath': instance.iconPath,
    };

_$OnboardingConfigModelImpl _$$OnboardingConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingConfigModelImpl(
      stock: StockRecommendationModel.fromJson(
          json['stock'] as Map<String, dynamic>),
      topUpCard:
          ActionCardModel.fromJson(json['topUpCard'] as Map<String, dynamic>),
      watchlistCard: ActionCardModel.fromJson(
          json['watchlistCard'] as Map<String, dynamic>),
      budgetRanges: (json['budgetRanges'] as List<dynamic>)
          .map((e) => BudgetRangeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => GoalOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendationsContent: RecommendationsContent.fromJson(
          json['recommendationsContent'] as Map<String, dynamic>),
      budgetContent:
          BudgetContent.fromJson(json['budgetContent'] as Map<String, dynamic>),
      experienceContent: ExperienceContent.fromJson(
          json['experienceContent'] as Map<String, dynamic>),
      goalsContent:
          GoalsContent.fromJson(json['goalsContent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnboardingConfigModelImplToJson(
        _$OnboardingConfigModelImpl instance) =>
    <String, dynamic>{
      'stock': instance.stock,
      'topUpCard': instance.topUpCard,
      'watchlistCard': instance.watchlistCard,
      'budgetRanges': instance.budgetRanges,
      'goals': instance.goals,
      'recommendationsContent': instance.recommendationsContent,
      'budgetContent': instance.budgetContent,
      'experienceContent': instance.experienceContent,
      'goalsContent': instance.goalsContent,
    };
