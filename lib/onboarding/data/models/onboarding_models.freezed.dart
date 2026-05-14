// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockRecommendationModel _$StockRecommendationModelFromJson(
    Map<String, dynamic> json) {
  return _StockRecommendationModel.fromJson(json);
}

/// @nodoc
mixin _$StockRecommendationModel {
  String get name => throw _privateConstructorUsedError;
  String get ticker => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get changePercent => throw _privateConstructorUsedError;
  bool get isPositive => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this StockRecommendationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockRecommendationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockRecommendationModelCopyWith<StockRecommendationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockRecommendationModelCopyWith<$Res> {
  factory $StockRecommendationModelCopyWith(StockRecommendationModel value,
          $Res Function(StockRecommendationModel) then) =
      _$StockRecommendationModelCopyWithImpl<$Res, StockRecommendationModel>;
  @useResult
  $Res call(
      {String name,
      String ticker,
      String exchange,
      String price,
      String changePercent,
      bool isPositive,
      String imagePath});
}

/// @nodoc
class _$StockRecommendationModelCopyWithImpl<$Res,
        $Val extends StockRecommendationModel>
    implements $StockRecommendationModelCopyWith<$Res> {
  _$StockRecommendationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockRecommendationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ticker = null,
    Object? exchange = null,
    Object? price = null,
    Object? changePercent = null,
    Object? isPositive = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as String,
      isPositive: null == isPositive
          ? _value.isPositive
          : isPositive // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockRecommendationModelImplCopyWith<$Res>
    implements $StockRecommendationModelCopyWith<$Res> {
  factory _$$StockRecommendationModelImplCopyWith(
          _$StockRecommendationModelImpl value,
          $Res Function(_$StockRecommendationModelImpl) then) =
      __$$StockRecommendationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String ticker,
      String exchange,
      String price,
      String changePercent,
      bool isPositive,
      String imagePath});
}

/// @nodoc
class __$$StockRecommendationModelImplCopyWithImpl<$Res>
    extends _$StockRecommendationModelCopyWithImpl<$Res,
        _$StockRecommendationModelImpl>
    implements _$$StockRecommendationModelImplCopyWith<$Res> {
  __$$StockRecommendationModelImplCopyWithImpl(
      _$StockRecommendationModelImpl _value,
      $Res Function(_$StockRecommendationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockRecommendationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ticker = null,
    Object? exchange = null,
    Object? price = null,
    Object? changePercent = null,
    Object? isPositive = null,
    Object? imagePath = null,
  }) {
    return _then(_$StockRecommendationModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as String,
      isPositive: null == isPositive
          ? _value.isPositive
          : isPositive // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockRecommendationModelImpl implements _StockRecommendationModel {
  const _$StockRecommendationModelImpl(
      {required this.name,
      required this.ticker,
      required this.exchange,
      required this.price,
      required this.changePercent,
      required this.isPositive,
      required this.imagePath});

  factory _$StockRecommendationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockRecommendationModelImplFromJson(json);

  @override
  final String name;
  @override
  final String ticker;
  @override
  final String exchange;
  @override
  final String price;
  @override
  final String changePercent;
  @override
  final bool isPositive;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'StockRecommendationModel(name: $name, ticker: $ticker, exchange: $exchange, price: $price, changePercent: $changePercent, isPositive: $isPositive, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockRecommendationModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.changePercent, changePercent) ||
                other.changePercent == changePercent) &&
            (identical(other.isPositive, isPositive) ||
                other.isPositive == isPositive) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, ticker, exchange, price,
      changePercent, isPositive, imagePath);

  /// Create a copy of StockRecommendationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockRecommendationModelImplCopyWith<_$StockRecommendationModelImpl>
      get copyWith => __$$StockRecommendationModelImplCopyWithImpl<
          _$StockRecommendationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockRecommendationModelImplToJson(
      this,
    );
  }
}

abstract class _StockRecommendationModel implements StockRecommendationModel {
  const factory _StockRecommendationModel(
      {required final String name,
      required final String ticker,
      required final String exchange,
      required final String price,
      required final String changePercent,
      required final bool isPositive,
      required final String imagePath}) = _$StockRecommendationModelImpl;

  factory _StockRecommendationModel.fromJson(Map<String, dynamic> json) =
      _$StockRecommendationModelImpl.fromJson;

  @override
  String get name;
  @override
  String get ticker;
  @override
  String get exchange;
  @override
  String get price;
  @override
  String get changePercent;
  @override
  bool get isPositive;
  @override
  String get imagePath;

  /// Create a copy of StockRecommendationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockRecommendationModelImplCopyWith<_$StockRecommendationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActionCardModel _$ActionCardModelFromJson(Map<String, dynamic> json) {
  return _ActionCardModel.fromJson(json);
}

/// @nodoc
mixin _$ActionCardModel {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  /// Serializes this ActionCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActionCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActionCardModelCopyWith<ActionCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCardModelCopyWith<$Res> {
  factory $ActionCardModelCopyWith(
          ActionCardModel value, $Res Function(ActionCardModel) then) =
      _$ActionCardModelCopyWithImpl<$Res, ActionCardModel>;
  @useResult
  $Res call({String title, String subtitle, String iconPath});
}

/// @nodoc
class _$ActionCardModelCopyWithImpl<$Res, $Val extends ActionCardModel>
    implements $ActionCardModelCopyWith<$Res> {
  _$ActionCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActionCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionCardModelImplCopyWith<$Res>
    implements $ActionCardModelCopyWith<$Res> {
  factory _$$ActionCardModelImplCopyWith(_$ActionCardModelImpl value,
          $Res Function(_$ActionCardModelImpl) then) =
      __$$ActionCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subtitle, String iconPath});
}

/// @nodoc
class __$$ActionCardModelImplCopyWithImpl<$Res>
    extends _$ActionCardModelCopyWithImpl<$Res, _$ActionCardModelImpl>
    implements _$$ActionCardModelImplCopyWith<$Res> {
  __$$ActionCardModelImplCopyWithImpl(
      _$ActionCardModelImpl _value, $Res Function(_$ActionCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? iconPath = null,
  }) {
    return _then(_$ActionCardModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionCardModelImpl implements _ActionCardModel {
  const _$ActionCardModelImpl(
      {required this.title, required this.subtitle, required this.iconPath});

  factory _$ActionCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionCardModelImplFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'ActionCardModel(title: $title, subtitle: $subtitle, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCardModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, iconPath);

  /// Create a copy of ActionCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionCardModelImplCopyWith<_$ActionCardModelImpl> get copyWith =>
      __$$ActionCardModelImplCopyWithImpl<_$ActionCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionCardModelImplToJson(
      this,
    );
  }
}

abstract class _ActionCardModel implements ActionCardModel {
  const factory _ActionCardModel(
      {required final String title,
      required final String subtitle,
      required final String iconPath}) = _$ActionCardModelImpl;

  factory _ActionCardModel.fromJson(Map<String, dynamic> json) =
      _$ActionCardModelImpl.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get iconPath;

  /// Create a copy of ActionCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionCardModelImplCopyWith<_$ActionCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BudgetRangeModel _$BudgetRangeModelFromJson(Map<String, dynamic> json) {
  return _BudgetRangeModel.fromJson(json);
}

/// @nodoc
mixin _$BudgetRangeModel {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get sublabel => throw _privateConstructorUsedError;

  /// Serializes this BudgetRangeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BudgetRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetRangeModelCopyWith<BudgetRangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetRangeModelCopyWith<$Res> {
  factory $BudgetRangeModelCopyWith(
          BudgetRangeModel value, $Res Function(BudgetRangeModel) then) =
      _$BudgetRangeModelCopyWithImpl<$Res, BudgetRangeModel>;
  @useResult
  $Res call({String id, String label, String sublabel});
}

/// @nodoc
class _$BudgetRangeModelCopyWithImpl<$Res, $Val extends BudgetRangeModel>
    implements $BudgetRangeModelCopyWith<$Res> {
  _$BudgetRangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? sublabel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sublabel: null == sublabel
          ? _value.sublabel
          : sublabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetRangeModelImplCopyWith<$Res>
    implements $BudgetRangeModelCopyWith<$Res> {
  factory _$$BudgetRangeModelImplCopyWith(_$BudgetRangeModelImpl value,
          $Res Function(_$BudgetRangeModelImpl) then) =
      __$$BudgetRangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String sublabel});
}

/// @nodoc
class __$$BudgetRangeModelImplCopyWithImpl<$Res>
    extends _$BudgetRangeModelCopyWithImpl<$Res, _$BudgetRangeModelImpl>
    implements _$$BudgetRangeModelImplCopyWith<$Res> {
  __$$BudgetRangeModelImplCopyWithImpl(_$BudgetRangeModelImpl _value,
      $Res Function(_$BudgetRangeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? sublabel = null,
  }) {
    return _then(_$BudgetRangeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sublabel: null == sublabel
          ? _value.sublabel
          : sublabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetRangeModelImpl implements _BudgetRangeModel {
  const _$BudgetRangeModelImpl(
      {required this.id, required this.label, required this.sublabel});

  factory _$BudgetRangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetRangeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String sublabel;

  @override
  String toString() {
    return 'BudgetRangeModel(id: $id, label: $label, sublabel: $sublabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetRangeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.sublabel, sublabel) ||
                other.sublabel == sublabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, sublabel);

  /// Create a copy of BudgetRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetRangeModelImplCopyWith<_$BudgetRangeModelImpl> get copyWith =>
      __$$BudgetRangeModelImplCopyWithImpl<_$BudgetRangeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetRangeModelImplToJson(
      this,
    );
  }
}

abstract class _BudgetRangeModel implements BudgetRangeModel {
  const factory _BudgetRangeModel(
      {required final String id,
      required final String label,
      required final String sublabel}) = _$BudgetRangeModelImpl;

  factory _BudgetRangeModel.fromJson(Map<String, dynamic> json) =
      _$BudgetRangeModelImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get sublabel;

  /// Create a copy of BudgetRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetRangeModelImplCopyWith<_$BudgetRangeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalOptionModel _$GoalOptionModelFromJson(Map<String, dynamic> json) {
  return _GoalOptionModel.fromJson(json);
}

/// @nodoc
mixin _$GoalOptionModel {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this GoalOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalOptionModelCopyWith<GoalOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalOptionModelCopyWith<$Res> {
  factory $GoalOptionModelCopyWith(
          GoalOptionModel value, $Res Function(GoalOptionModel) then) =
      _$GoalOptionModelCopyWithImpl<$Res, GoalOptionModel>;
  @useResult
  $Res call({String id, String label, String icon});
}

/// @nodoc
class _$GoalOptionModelCopyWithImpl<$Res, $Val extends GoalOptionModel>
    implements $GoalOptionModelCopyWith<$Res> {
  _$GoalOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalOptionModelImplCopyWith<$Res>
    implements $GoalOptionModelCopyWith<$Res> {
  factory _$$GoalOptionModelImplCopyWith(_$GoalOptionModelImpl value,
          $Res Function(_$GoalOptionModelImpl) then) =
      __$$GoalOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String icon});
}

/// @nodoc
class __$$GoalOptionModelImplCopyWithImpl<$Res>
    extends _$GoalOptionModelCopyWithImpl<$Res, _$GoalOptionModelImpl>
    implements _$$GoalOptionModelImplCopyWith<$Res> {
  __$$GoalOptionModelImplCopyWithImpl(
      _$GoalOptionModelImpl _value, $Res Function(_$GoalOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? icon = null,
  }) {
    return _then(_$GoalOptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalOptionModelImpl implements _GoalOptionModel {
  const _$GoalOptionModelImpl(
      {required this.id, required this.label, required this.icon});

  factory _$GoalOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalOptionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String icon;

  @override
  String toString() {
    return 'GoalOptionModel(id: $id, label: $label, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, icon);

  /// Create a copy of GoalOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalOptionModelImplCopyWith<_$GoalOptionModelImpl> get copyWith =>
      __$$GoalOptionModelImplCopyWithImpl<_$GoalOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalOptionModelImplToJson(
      this,
    );
  }
}

abstract class _GoalOptionModel implements GoalOptionModel {
  const factory _GoalOptionModel(
      {required final String id,
      required final String label,
      required final String icon}) = _$GoalOptionModelImpl;

  factory _GoalOptionModel.fromJson(Map<String, dynamic> json) =
      _$GoalOptionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get icon;

  /// Create a copy of GoalOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalOptionModelImplCopyWith<_$GoalOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecommendationsContent _$RecommendationsContentFromJson(
    Map<String, dynamic> json) {
  return _RecommendationsContent.fromJson(json);
}

/// @nodoc
mixin _$RecommendationsContent {
  String get title => throw _privateConstructorUsedError;
  String get emptyBalanceText => throw _privateConstructorUsedError;

  /// Serializes this RecommendationsContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationsContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationsContentCopyWith<RecommendationsContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationsContentCopyWith<$Res> {
  factory $RecommendationsContentCopyWith(RecommendationsContent value,
          $Res Function(RecommendationsContent) then) =
      _$RecommendationsContentCopyWithImpl<$Res, RecommendationsContent>;
  @useResult
  $Res call({String title, String emptyBalanceText});
}

/// @nodoc
class _$RecommendationsContentCopyWithImpl<$Res,
        $Val extends RecommendationsContent>
    implements $RecommendationsContentCopyWith<$Res> {
  _$RecommendationsContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationsContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? emptyBalanceText = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      emptyBalanceText: null == emptyBalanceText
          ? _value.emptyBalanceText
          : emptyBalanceText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationsContentImplCopyWith<$Res>
    implements $RecommendationsContentCopyWith<$Res> {
  factory _$$RecommendationsContentImplCopyWith(
          _$RecommendationsContentImpl value,
          $Res Function(_$RecommendationsContentImpl) then) =
      __$$RecommendationsContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String emptyBalanceText});
}

/// @nodoc
class __$$RecommendationsContentImplCopyWithImpl<$Res>
    extends _$RecommendationsContentCopyWithImpl<$Res,
        _$RecommendationsContentImpl>
    implements _$$RecommendationsContentImplCopyWith<$Res> {
  __$$RecommendationsContentImplCopyWithImpl(
      _$RecommendationsContentImpl _value,
      $Res Function(_$RecommendationsContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationsContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? emptyBalanceText = null,
  }) {
    return _then(_$RecommendationsContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      emptyBalanceText: null == emptyBalanceText
          ? _value.emptyBalanceText
          : emptyBalanceText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationsContentImpl implements _RecommendationsContent {
  const _$RecommendationsContentImpl(
      {required this.title, required this.emptyBalanceText});

  factory _$RecommendationsContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationsContentImplFromJson(json);

  @override
  final String title;
  @override
  final String emptyBalanceText;

  @override
  String toString() {
    return 'RecommendationsContent(title: $title, emptyBalanceText: $emptyBalanceText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationsContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.emptyBalanceText, emptyBalanceText) ||
                other.emptyBalanceText == emptyBalanceText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, emptyBalanceText);

  /// Create a copy of RecommendationsContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationsContentImplCopyWith<_$RecommendationsContentImpl>
      get copyWith => __$$RecommendationsContentImplCopyWithImpl<
          _$RecommendationsContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationsContentImplToJson(
      this,
    );
  }
}

abstract class _RecommendationsContent implements RecommendationsContent {
  const factory _RecommendationsContent(
      {required final String title,
      required final String emptyBalanceText}) = _$RecommendationsContentImpl;

  factory _RecommendationsContent.fromJson(Map<String, dynamic> json) =
      _$RecommendationsContentImpl.fromJson;

  @override
  String get title;
  @override
  String get emptyBalanceText;

  /// Create a copy of RecommendationsContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationsContentImplCopyWith<_$RecommendationsContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BudgetContent _$BudgetContentFromJson(Map<String, dynamic> json) {
  return _BudgetContent.fromJson(json);
}

/// @nodoc
mixin _$BudgetContent {
  String get title => throw _privateConstructorUsedError;
  String get infoNote => throw _privateConstructorUsedError;

  /// Serializes this BudgetContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BudgetContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetContentCopyWith<BudgetContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetContentCopyWith<$Res> {
  factory $BudgetContentCopyWith(
          BudgetContent value, $Res Function(BudgetContent) then) =
      _$BudgetContentCopyWithImpl<$Res, BudgetContent>;
  @useResult
  $Res call({String title, String infoNote});
}

/// @nodoc
class _$BudgetContentCopyWithImpl<$Res, $Val extends BudgetContent>
    implements $BudgetContentCopyWith<$Res> {
  _$BudgetContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? infoNote = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      infoNote: null == infoNote
          ? _value.infoNote
          : infoNote // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetContentImplCopyWith<$Res>
    implements $BudgetContentCopyWith<$Res> {
  factory _$$BudgetContentImplCopyWith(
          _$BudgetContentImpl value, $Res Function(_$BudgetContentImpl) then) =
      __$$BudgetContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String infoNote});
}

/// @nodoc
class __$$BudgetContentImplCopyWithImpl<$Res>
    extends _$BudgetContentCopyWithImpl<$Res, _$BudgetContentImpl>
    implements _$$BudgetContentImplCopyWith<$Res> {
  __$$BudgetContentImplCopyWithImpl(
      _$BudgetContentImpl _value, $Res Function(_$BudgetContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? infoNote = null,
  }) {
    return _then(_$BudgetContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      infoNote: null == infoNote
          ? _value.infoNote
          : infoNote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetContentImpl implements _BudgetContent {
  const _$BudgetContentImpl({required this.title, required this.infoNote});

  factory _$BudgetContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetContentImplFromJson(json);

  @override
  final String title;
  @override
  final String infoNote;

  @override
  String toString() {
    return 'BudgetContent(title: $title, infoNote: $infoNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.infoNote, infoNote) ||
                other.infoNote == infoNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, infoNote);

  /// Create a copy of BudgetContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetContentImplCopyWith<_$BudgetContentImpl> get copyWith =>
      __$$BudgetContentImplCopyWithImpl<_$BudgetContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetContentImplToJson(
      this,
    );
  }
}

abstract class _BudgetContent implements BudgetContent {
  const factory _BudgetContent(
      {required final String title,
      required final String infoNote}) = _$BudgetContentImpl;

  factory _BudgetContent.fromJson(Map<String, dynamic> json) =
      _$BudgetContentImpl.fromJson;

  @override
  String get title;
  @override
  String get infoNote;

  /// Create a copy of BudgetContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetContentImplCopyWith<_$BudgetContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExperienceContent _$ExperienceContentFromJson(Map<String, dynamic> json) {
  return _ExperienceContent.fromJson(json);
}

/// @nodoc
mixin _$ExperienceContent {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  List<ExperienceLevelModel> get levels => throw _privateConstructorUsedError;

  /// Serializes this ExperienceContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExperienceContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceContentCopyWith<ExperienceContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceContentCopyWith<$Res> {
  factory $ExperienceContentCopyWith(
          ExperienceContent value, $Res Function(ExperienceContent) then) =
      _$ExperienceContentCopyWithImpl<$Res, ExperienceContent>;
  @useResult
  $Res call({String title, String subtitle, List<ExperienceLevelModel> levels});
}

/// @nodoc
class _$ExperienceContentCopyWithImpl<$Res, $Val extends ExperienceContent>
    implements $ExperienceContentCopyWith<$Res> {
  _$ExperienceContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExperienceContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? levels = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<ExperienceLevelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceContentImplCopyWith<$Res>
    implements $ExperienceContentCopyWith<$Res> {
  factory _$$ExperienceContentImplCopyWith(_$ExperienceContentImpl value,
          $Res Function(_$ExperienceContentImpl) then) =
      __$$ExperienceContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subtitle, List<ExperienceLevelModel> levels});
}

/// @nodoc
class __$$ExperienceContentImplCopyWithImpl<$Res>
    extends _$ExperienceContentCopyWithImpl<$Res, _$ExperienceContentImpl>
    implements _$$ExperienceContentImplCopyWith<$Res> {
  __$$ExperienceContentImplCopyWithImpl(_$ExperienceContentImpl _value,
      $Res Function(_$ExperienceContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExperienceContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? levels = null,
  }) {
    return _then(_$ExperienceContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      levels: null == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<ExperienceLevelModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceContentImpl implements _ExperienceContent {
  const _$ExperienceContentImpl(
      {required this.title,
      required this.subtitle,
      required final List<ExperienceLevelModel> levels})
      : _levels = levels;

  factory _$ExperienceContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceContentImplFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  final List<ExperienceLevelModel> _levels;
  @override
  List<ExperienceLevelModel> get levels {
    if (_levels is EqualUnmodifiableListView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_levels);
  }

  @override
  String toString() {
    return 'ExperienceContent(title: $title, subtitle: $subtitle, levels: $levels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality().equals(other._levels, _levels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle,
      const DeepCollectionEquality().hash(_levels));

  /// Create a copy of ExperienceContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceContentImplCopyWith<_$ExperienceContentImpl> get copyWith =>
      __$$ExperienceContentImplCopyWithImpl<_$ExperienceContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceContentImplToJson(
      this,
    );
  }
}

abstract class _ExperienceContent implements ExperienceContent {
  const factory _ExperienceContent(
          {required final String title,
          required final String subtitle,
          required final List<ExperienceLevelModel> levels}) =
      _$ExperienceContentImpl;

  factory _ExperienceContent.fromJson(Map<String, dynamic> json) =
      _$ExperienceContentImpl.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  List<ExperienceLevelModel> get levels;

  /// Create a copy of ExperienceContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceContentImplCopyWith<_$ExperienceContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalsContent _$GoalsContentFromJson(Map<String, dynamic> json) {
  return _GoalsContent.fromJson(json);
}

/// @nodoc
mixin _$GoalsContent {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;

  /// Serializes this GoalsContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalsContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalsContentCopyWith<GoalsContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsContentCopyWith<$Res> {
  factory $GoalsContentCopyWith(
          GoalsContent value, $Res Function(GoalsContent) then) =
      _$GoalsContentCopyWithImpl<$Res, GoalsContent>;
  @useResult
  $Res call({String title, String subtitle});
}

/// @nodoc
class _$GoalsContentCopyWithImpl<$Res, $Val extends GoalsContent>
    implements $GoalsContentCopyWith<$Res> {
  _$GoalsContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalsContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalsContentImplCopyWith<$Res>
    implements $GoalsContentCopyWith<$Res> {
  factory _$$GoalsContentImplCopyWith(
          _$GoalsContentImpl value, $Res Function(_$GoalsContentImpl) then) =
      __$$GoalsContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subtitle});
}

/// @nodoc
class __$$GoalsContentImplCopyWithImpl<$Res>
    extends _$GoalsContentCopyWithImpl<$Res, _$GoalsContentImpl>
    implements _$$GoalsContentImplCopyWith<$Res> {
  __$$GoalsContentImplCopyWithImpl(
      _$GoalsContentImpl _value, $Res Function(_$GoalsContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalsContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
  }) {
    return _then(_$GoalsContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalsContentImpl implements _GoalsContent {
  const _$GoalsContentImpl({required this.title, required this.subtitle});

  factory _$GoalsContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalsContentImplFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'GoalsContent(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalsContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle);

  /// Create a copy of GoalsContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalsContentImplCopyWith<_$GoalsContentImpl> get copyWith =>
      __$$GoalsContentImplCopyWithImpl<_$GoalsContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalsContentImplToJson(
      this,
    );
  }
}

abstract class _GoalsContent implements GoalsContent {
  const factory _GoalsContent(
      {required final String title,
      required final String subtitle}) = _$GoalsContentImpl;

  factory _GoalsContent.fromJson(Map<String, dynamic> json) =
      _$GoalsContentImpl.fromJson;

  @override
  String get title;
  @override
  String get subtitle;

  /// Create a copy of GoalsContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalsContentImplCopyWith<_$GoalsContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExperienceLevelModel _$ExperienceLevelModelFromJson(Map<String, dynamic> json) {
  return _ExperienceLevelModel.fromJson(json);
}

/// @nodoc
mixin _$ExperienceLevelModel {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  /// Serializes this ExperienceLevelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExperienceLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceLevelModelCopyWith<ExperienceLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceLevelModelCopyWith<$Res> {
  factory $ExperienceLevelModelCopyWith(ExperienceLevelModel value,
          $Res Function(ExperienceLevelModel) then) =
      _$ExperienceLevelModelCopyWithImpl<$Res, ExperienceLevelModel>;
  @useResult
  $Res call({String id, String label, String description, String iconPath});
}

/// @nodoc
class _$ExperienceLevelModelCopyWithImpl<$Res,
        $Val extends ExperienceLevelModel>
    implements $ExperienceLevelModelCopyWith<$Res> {
  _$ExperienceLevelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExperienceLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? description = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceLevelModelImplCopyWith<$Res>
    implements $ExperienceLevelModelCopyWith<$Res> {
  factory _$$ExperienceLevelModelImplCopyWith(_$ExperienceLevelModelImpl value,
          $Res Function(_$ExperienceLevelModelImpl) then) =
      __$$ExperienceLevelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String description, String iconPath});
}

/// @nodoc
class __$$ExperienceLevelModelImplCopyWithImpl<$Res>
    extends _$ExperienceLevelModelCopyWithImpl<$Res, _$ExperienceLevelModelImpl>
    implements _$$ExperienceLevelModelImplCopyWith<$Res> {
  __$$ExperienceLevelModelImplCopyWithImpl(_$ExperienceLevelModelImpl _value,
      $Res Function(_$ExperienceLevelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExperienceLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? description = null,
    Object? iconPath = null,
  }) {
    return _then(_$ExperienceLevelModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceLevelModelImpl implements _ExperienceLevelModel {
  const _$ExperienceLevelModelImpl(
      {required this.id,
      required this.label,
      required this.description,
      required this.iconPath});

  factory _$ExperienceLevelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceLevelModelImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String description;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'ExperienceLevelModel(id: $id, label: $label, description: $description, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceLevelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, description, iconPath);

  /// Create a copy of ExperienceLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceLevelModelImplCopyWith<_$ExperienceLevelModelImpl>
      get copyWith =>
          __$$ExperienceLevelModelImplCopyWithImpl<_$ExperienceLevelModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceLevelModelImplToJson(
      this,
    );
  }
}

abstract class _ExperienceLevelModel implements ExperienceLevelModel {
  const factory _ExperienceLevelModel(
      {required final String id,
      required final String label,
      required final String description,
      required final String iconPath}) = _$ExperienceLevelModelImpl;

  factory _ExperienceLevelModel.fromJson(Map<String, dynamic> json) =
      _$ExperienceLevelModelImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get description;
  @override
  String get iconPath;

  /// Create a copy of ExperienceLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceLevelModelImplCopyWith<_$ExperienceLevelModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OnboardingConfigModel _$OnboardingConfigModelFromJson(
    Map<String, dynamic> json) {
  return _OnboardingConfigModel.fromJson(json);
}

/// @nodoc
mixin _$OnboardingConfigModel {
  StockRecommendationModel get stock => throw _privateConstructorUsedError;
  ActionCardModel get topUpCard => throw _privateConstructorUsedError;
  ActionCardModel get watchlistCard => throw _privateConstructorUsedError;
  List<BudgetRangeModel> get budgetRanges => throw _privateConstructorUsedError;
  List<GoalOptionModel> get goals => throw _privateConstructorUsedError;
  RecommendationsContent get recommendationsContent =>
      throw _privateConstructorUsedError;
  BudgetContent get budgetContent => throw _privateConstructorUsedError;
  ExperienceContent get experienceContent => throw _privateConstructorUsedError;
  GoalsContent get goalsContent => throw _privateConstructorUsedError;

  /// Serializes this OnboardingConfigModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingConfigModelCopyWith<OnboardingConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingConfigModelCopyWith<$Res> {
  factory $OnboardingConfigModelCopyWith(OnboardingConfigModel value,
          $Res Function(OnboardingConfigModel) then) =
      _$OnboardingConfigModelCopyWithImpl<$Res, OnboardingConfigModel>;
  @useResult
  $Res call(
      {StockRecommendationModel stock,
      ActionCardModel topUpCard,
      ActionCardModel watchlistCard,
      List<BudgetRangeModel> budgetRanges,
      List<GoalOptionModel> goals,
      RecommendationsContent recommendationsContent,
      BudgetContent budgetContent,
      ExperienceContent experienceContent,
      GoalsContent goalsContent});

  $StockRecommendationModelCopyWith<$Res> get stock;
  $ActionCardModelCopyWith<$Res> get topUpCard;
  $ActionCardModelCopyWith<$Res> get watchlistCard;
  $RecommendationsContentCopyWith<$Res> get recommendationsContent;
  $BudgetContentCopyWith<$Res> get budgetContent;
  $ExperienceContentCopyWith<$Res> get experienceContent;
  $GoalsContentCopyWith<$Res> get goalsContent;
}

/// @nodoc
class _$OnboardingConfigModelCopyWithImpl<$Res,
        $Val extends OnboardingConfigModel>
    implements $OnboardingConfigModelCopyWith<$Res> {
  _$OnboardingConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? topUpCard = null,
    Object? watchlistCard = null,
    Object? budgetRanges = null,
    Object? goals = null,
    Object? recommendationsContent = null,
    Object? budgetContent = null,
    Object? experienceContent = null,
    Object? goalsContent = null,
  }) {
    return _then(_value.copyWith(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as StockRecommendationModel,
      topUpCard: null == topUpCard
          ? _value.topUpCard
          : topUpCard // ignore: cast_nullable_to_non_nullable
              as ActionCardModel,
      watchlistCard: null == watchlistCard
          ? _value.watchlistCard
          : watchlistCard // ignore: cast_nullable_to_non_nullable
              as ActionCardModel,
      budgetRanges: null == budgetRanges
          ? _value.budgetRanges
          : budgetRanges // ignore: cast_nullable_to_non_nullable
              as List<BudgetRangeModel>,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<GoalOptionModel>,
      recommendationsContent: null == recommendationsContent
          ? _value.recommendationsContent
          : recommendationsContent // ignore: cast_nullable_to_non_nullable
              as RecommendationsContent,
      budgetContent: null == budgetContent
          ? _value.budgetContent
          : budgetContent // ignore: cast_nullable_to_non_nullable
              as BudgetContent,
      experienceContent: null == experienceContent
          ? _value.experienceContent
          : experienceContent // ignore: cast_nullable_to_non_nullable
              as ExperienceContent,
      goalsContent: null == goalsContent
          ? _value.goalsContent
          : goalsContent // ignore: cast_nullable_to_non_nullable
              as GoalsContent,
    ) as $Val);
  }

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StockRecommendationModelCopyWith<$Res> get stock {
    return $StockRecommendationModelCopyWith<$Res>(_value.stock, (value) {
      return _then(_value.copyWith(stock: value) as $Val);
    });
  }

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActionCardModelCopyWith<$Res> get topUpCard {
    return $ActionCardModelCopyWith<$Res>(_value.topUpCard, (value) {
      return _then(_value.copyWith(topUpCard: value) as $Val);
    });
  }

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActionCardModelCopyWith<$Res> get watchlistCard {
    return $ActionCardModelCopyWith<$Res>(_value.watchlistCard, (value) {
      return _then(_value.copyWith(watchlistCard: value) as $Val);
    });
  }

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecommendationsContentCopyWith<$Res> get recommendationsContent {
    return $RecommendationsContentCopyWith<$Res>(_value.recommendationsContent,
        (value) {
      return _then(_value.copyWith(recommendationsContent: value) as $Val);
    });
  }

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BudgetContentCopyWith<$Res> get budgetContent {
    return $BudgetContentCopyWith<$Res>(_value.budgetContent, (value) {
      return _then(_value.copyWith(budgetContent: value) as $Val);
    });
  }

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExperienceContentCopyWith<$Res> get experienceContent {
    return $ExperienceContentCopyWith<$Res>(_value.experienceContent, (value) {
      return _then(_value.copyWith(experienceContent: value) as $Val);
    });
  }

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalsContentCopyWith<$Res> get goalsContent {
    return $GoalsContentCopyWith<$Res>(_value.goalsContent, (value) {
      return _then(_value.copyWith(goalsContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnboardingConfigModelImplCopyWith<$Res>
    implements $OnboardingConfigModelCopyWith<$Res> {
  factory _$$OnboardingConfigModelImplCopyWith(
          _$OnboardingConfigModelImpl value,
          $Res Function(_$OnboardingConfigModelImpl) then) =
      __$$OnboardingConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StockRecommendationModel stock,
      ActionCardModel topUpCard,
      ActionCardModel watchlistCard,
      List<BudgetRangeModel> budgetRanges,
      List<GoalOptionModel> goals,
      RecommendationsContent recommendationsContent,
      BudgetContent budgetContent,
      ExperienceContent experienceContent,
      GoalsContent goalsContent});

  @override
  $StockRecommendationModelCopyWith<$Res> get stock;
  @override
  $ActionCardModelCopyWith<$Res> get topUpCard;
  @override
  $ActionCardModelCopyWith<$Res> get watchlistCard;
  @override
  $RecommendationsContentCopyWith<$Res> get recommendationsContent;
  @override
  $BudgetContentCopyWith<$Res> get budgetContent;
  @override
  $ExperienceContentCopyWith<$Res> get experienceContent;
  @override
  $GoalsContentCopyWith<$Res> get goalsContent;
}

/// @nodoc
class __$$OnboardingConfigModelImplCopyWithImpl<$Res>
    extends _$OnboardingConfigModelCopyWithImpl<$Res,
        _$OnboardingConfigModelImpl>
    implements _$$OnboardingConfigModelImplCopyWith<$Res> {
  __$$OnboardingConfigModelImplCopyWithImpl(_$OnboardingConfigModelImpl _value,
      $Res Function(_$OnboardingConfigModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? topUpCard = null,
    Object? watchlistCard = null,
    Object? budgetRanges = null,
    Object? goals = null,
    Object? recommendationsContent = null,
    Object? budgetContent = null,
    Object? experienceContent = null,
    Object? goalsContent = null,
  }) {
    return _then(_$OnboardingConfigModelImpl(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as StockRecommendationModel,
      topUpCard: null == topUpCard
          ? _value.topUpCard
          : topUpCard // ignore: cast_nullable_to_non_nullable
              as ActionCardModel,
      watchlistCard: null == watchlistCard
          ? _value.watchlistCard
          : watchlistCard // ignore: cast_nullable_to_non_nullable
              as ActionCardModel,
      budgetRanges: null == budgetRanges
          ? _value._budgetRanges
          : budgetRanges // ignore: cast_nullable_to_non_nullable
              as List<BudgetRangeModel>,
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<GoalOptionModel>,
      recommendationsContent: null == recommendationsContent
          ? _value.recommendationsContent
          : recommendationsContent // ignore: cast_nullable_to_non_nullable
              as RecommendationsContent,
      budgetContent: null == budgetContent
          ? _value.budgetContent
          : budgetContent // ignore: cast_nullable_to_non_nullable
              as BudgetContent,
      experienceContent: null == experienceContent
          ? _value.experienceContent
          : experienceContent // ignore: cast_nullable_to_non_nullable
              as ExperienceContent,
      goalsContent: null == goalsContent
          ? _value.goalsContent
          : goalsContent // ignore: cast_nullable_to_non_nullable
              as GoalsContent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingConfigModelImpl implements _OnboardingConfigModel {
  const _$OnboardingConfigModelImpl(
      {required this.stock,
      required this.topUpCard,
      required this.watchlistCard,
      required final List<BudgetRangeModel> budgetRanges,
      required final List<GoalOptionModel> goals,
      required this.recommendationsContent,
      required this.budgetContent,
      required this.experienceContent,
      required this.goalsContent})
      : _budgetRanges = budgetRanges,
        _goals = goals;

  factory _$OnboardingConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingConfigModelImplFromJson(json);

  @override
  final StockRecommendationModel stock;
  @override
  final ActionCardModel topUpCard;
  @override
  final ActionCardModel watchlistCard;
  final List<BudgetRangeModel> _budgetRanges;
  @override
  List<BudgetRangeModel> get budgetRanges {
    if (_budgetRanges is EqualUnmodifiableListView) return _budgetRanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_budgetRanges);
  }

  final List<GoalOptionModel> _goals;
  @override
  List<GoalOptionModel> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  final RecommendationsContent recommendationsContent;
  @override
  final BudgetContent budgetContent;
  @override
  final ExperienceContent experienceContent;
  @override
  final GoalsContent goalsContent;

  @override
  String toString() {
    return 'OnboardingConfigModel(stock: $stock, topUpCard: $topUpCard, watchlistCard: $watchlistCard, budgetRanges: $budgetRanges, goals: $goals, recommendationsContent: $recommendationsContent, budgetContent: $budgetContent, experienceContent: $experienceContent, goalsContent: $goalsContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingConfigModelImpl &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.topUpCard, topUpCard) ||
                other.topUpCard == topUpCard) &&
            (identical(other.watchlistCard, watchlistCard) ||
                other.watchlistCard == watchlistCard) &&
            const DeepCollectionEquality()
                .equals(other._budgetRanges, _budgetRanges) &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            (identical(other.recommendationsContent, recommendationsContent) ||
                other.recommendationsContent == recommendationsContent) &&
            (identical(other.budgetContent, budgetContent) ||
                other.budgetContent == budgetContent) &&
            (identical(other.experienceContent, experienceContent) ||
                other.experienceContent == experienceContent) &&
            (identical(other.goalsContent, goalsContent) ||
                other.goalsContent == goalsContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stock,
      topUpCard,
      watchlistCard,
      const DeepCollectionEquality().hash(_budgetRanges),
      const DeepCollectionEquality().hash(_goals),
      recommendationsContent,
      budgetContent,
      experienceContent,
      goalsContent);

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingConfigModelImplCopyWith<_$OnboardingConfigModelImpl>
      get copyWith => __$$OnboardingConfigModelImplCopyWithImpl<
          _$OnboardingConfigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingConfigModelImplToJson(
      this,
    );
  }
}

abstract class _OnboardingConfigModel implements OnboardingConfigModel {
  const factory _OnboardingConfigModel(
      {required final StockRecommendationModel stock,
      required final ActionCardModel topUpCard,
      required final ActionCardModel watchlistCard,
      required final List<BudgetRangeModel> budgetRanges,
      required final List<GoalOptionModel> goals,
      required final RecommendationsContent recommendationsContent,
      required final BudgetContent budgetContent,
      required final ExperienceContent experienceContent,
      required final GoalsContent goalsContent}) = _$OnboardingConfigModelImpl;

  factory _OnboardingConfigModel.fromJson(Map<String, dynamic> json) =
      _$OnboardingConfigModelImpl.fromJson;

  @override
  StockRecommendationModel get stock;
  @override
  ActionCardModel get topUpCard;
  @override
  ActionCardModel get watchlistCard;
  @override
  List<BudgetRangeModel> get budgetRanges;
  @override
  List<GoalOptionModel> get goals;
  @override
  RecommendationsContent get recommendationsContent;
  @override
  BudgetContent get budgetContent;
  @override
  ExperienceContent get experienceContent;
  @override
  GoalsContent get goalsContent;

  /// Create a copy of OnboardingConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingConfigModelImplCopyWith<_$OnboardingConfigModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
