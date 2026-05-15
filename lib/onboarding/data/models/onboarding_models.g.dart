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
      experienceContent: ExperienceContent.fromJson(
          json['experienceContent'] as Map<String, dynamic>),
      goalsContent: json['goalsContent'] == null
          ? null
          : GoalsContent.fromJson(json['goalsContent'] as Map<String, dynamic>),
      goals: (json['goals'] as List<dynamic>?)
              ?.map((e) => GoalOptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      budgetContent: json['budgetContent'] == null
          ? null
          : BudgetContent.fromJson(
              json['budgetContent'] as Map<String, dynamic>),
      budgetRanges: (json['budgetRanges'] as List<dynamic>?)
              ?.map((e) => BudgetRangeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recommendationsContent: json['recommendationsContent'] == null
          ? null
          : RecommendationsContent.fromJson(
              json['recommendationsContent'] as Map<String, dynamic>),
      stock: json['stock'] == null
          ? null
          : StockRecommendationModel.fromJson(
              json['stock'] as Map<String, dynamic>),
      topUpCard: json['topUpCard'] == null
          ? null
          : ActionCardModel.fromJson(json['topUpCard'] as Map<String, dynamic>),
      watchlistCard: json['watchlistCard'] == null
          ? null
          : ActionCardModel.fromJson(
              json['watchlistCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnboardingConfigModelImplToJson(
        _$OnboardingConfigModelImpl instance) =>
    <String, dynamic>{
      'experienceContent': instance.experienceContent,
      'goalsContent': instance.goalsContent,
      'goals': instance.goals,
      'budgetContent': instance.budgetContent,
      'budgetRanges': instance.budgetRanges,
      'recommendationsContent': instance.recommendationsContent,
      'stock': instance.stock,
      'topUpCard': instance.topUpCard,
      'watchlistCard': instance.watchlistCard,
    };

_$GoalsStepDataImpl _$$GoalsStepDataImplFromJson(Map<String, dynamic> json) =>
    _$GoalsStepDataImpl(
      content: GoalsContent.fromJson(json['content'] as Map<String, dynamic>),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => GoalOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoalsStepDataImplToJson(_$GoalsStepDataImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'goals': instance.goals,
    };

_$BudgetStepDataImpl _$$BudgetStepDataImplFromJson(Map<String, dynamic> json) =>
    _$BudgetStepDataImpl(
      content: BudgetContent.fromJson(json['content'] as Map<String, dynamic>),
      budgetRanges: (json['budgetRanges'] as List<dynamic>)
          .map((e) => BudgetRangeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BudgetStepDataImplToJson(
        _$BudgetStepDataImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'budgetRanges': instance.budgetRanges,
    };

_$RecommendationsStepDataImpl _$$RecommendationsStepDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationsStepDataImpl(
      content: RecommendationsContent.fromJson(
          json['content'] as Map<String, dynamic>),
      stock: StockRecommendationModel.fromJson(
          json['stock'] as Map<String, dynamic>),
      topUpCard:
          ActionCardModel.fromJson(json['topUpCard'] as Map<String, dynamic>),
      watchlistCard: ActionCardModel.fromJson(
          json['watchlistCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecommendationsStepDataImplToJson(
        _$RecommendationsStepDataImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'stock': instance.stock,
      'topUpCard': instance.topUpCard,
      'watchlistCard': instance.watchlistCard,
    };
