// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_onboarding_config_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetOnboardingConfigResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperienceContent data) successExperience,
    required TResult Function(GoalsStepData data) successGoals,
    required TResult Function(BudgetStepData data) successBudget,
    required TResult Function(RecommendationsStepData data)
        successRecommendations,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperienceContent data)? successExperience,
    TResult? Function(GoalsStepData data)? successGoals,
    TResult? Function(BudgetStepData data)? successBudget,
    TResult? Function(RecommendationsStepData data)? successRecommendations,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperienceContent data)? successExperience,
    TResult Function(GoalsStepData data)? successGoals,
    TResult Function(BudgetStepData data)? successBudget,
    TResult Function(RecommendationsStepData data)? successRecommendations,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessExperience value) successExperience,
    required TResult Function(_SuccessGoals value) successGoals,
    required TResult Function(_SuccessBudget value) successBudget,
    required TResult Function(_SuccessRecommendations value)
        successRecommendations,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessExperience value)? successExperience,
    TResult? Function(_SuccessGoals value)? successGoals,
    TResult? Function(_SuccessBudget value)? successBudget,
    TResult? Function(_SuccessRecommendations value)? successRecommendations,
    TResult? Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessExperience value)? successExperience,
    TResult Function(_SuccessGoals value)? successGoals,
    TResult Function(_SuccessBudget value)? successBudget,
    TResult Function(_SuccessRecommendations value)? successRecommendations,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOnboardingConfigResponseCopyWith<$Res> {
  factory $GetOnboardingConfigResponseCopyWith(
          GetOnboardingConfigResponse value,
          $Res Function(GetOnboardingConfigResponse) then) =
      _$GetOnboardingConfigResponseCopyWithImpl<$Res,
          GetOnboardingConfigResponse>;
}

/// @nodoc
class _$GetOnboardingConfigResponseCopyWithImpl<$Res,
        $Val extends GetOnboardingConfigResponse>
    implements $GetOnboardingConfigResponseCopyWith<$Res> {
  _$GetOnboardingConfigResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SuccessExperienceImplCopyWith<$Res> {
  factory _$$SuccessExperienceImplCopyWith(_$SuccessExperienceImpl value,
          $Res Function(_$SuccessExperienceImpl) then) =
      __$$SuccessExperienceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperienceContent data});

  $ExperienceContentCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessExperienceImplCopyWithImpl<$Res>
    extends _$GetOnboardingConfigResponseCopyWithImpl<$Res,
        _$SuccessExperienceImpl>
    implements _$$SuccessExperienceImplCopyWith<$Res> {
  __$$SuccessExperienceImplCopyWithImpl(_$SuccessExperienceImpl _value,
      $Res Function(_$SuccessExperienceImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessExperienceImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExperienceContent,
    ));
  }

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExperienceContentCopyWith<$Res> get data {
    return $ExperienceContentCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessExperienceImpl implements _SuccessExperience {
  const _$SuccessExperienceImpl(this.data);

  @override
  final ExperienceContent data;

  @override
  String toString() {
    return 'GetOnboardingConfigResponse.successExperience(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessExperienceImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessExperienceImplCopyWith<_$SuccessExperienceImpl> get copyWith =>
      __$$SuccessExperienceImplCopyWithImpl<_$SuccessExperienceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperienceContent data) successExperience,
    required TResult Function(GoalsStepData data) successGoals,
    required TResult Function(BudgetStepData data) successBudget,
    required TResult Function(RecommendationsStepData data)
        successRecommendations,
    required TResult Function() serverError,
  }) {
    return successExperience(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperienceContent data)? successExperience,
    TResult? Function(GoalsStepData data)? successGoals,
    TResult? Function(BudgetStepData data)? successBudget,
    TResult? Function(RecommendationsStepData data)? successRecommendations,
    TResult? Function()? serverError,
  }) {
    return successExperience?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperienceContent data)? successExperience,
    TResult Function(GoalsStepData data)? successGoals,
    TResult Function(BudgetStepData data)? successBudget,
    TResult Function(RecommendationsStepData data)? successRecommendations,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (successExperience != null) {
      return successExperience(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessExperience value) successExperience,
    required TResult Function(_SuccessGoals value) successGoals,
    required TResult Function(_SuccessBudget value) successBudget,
    required TResult Function(_SuccessRecommendations value)
        successRecommendations,
    required TResult Function(_ServerError value) serverError,
  }) {
    return successExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessExperience value)? successExperience,
    TResult? Function(_SuccessGoals value)? successGoals,
    TResult? Function(_SuccessBudget value)? successBudget,
    TResult? Function(_SuccessRecommendations value)? successRecommendations,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return successExperience?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessExperience value)? successExperience,
    TResult Function(_SuccessGoals value)? successGoals,
    TResult Function(_SuccessBudget value)? successBudget,
    TResult Function(_SuccessRecommendations value)? successRecommendations,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (successExperience != null) {
      return successExperience(this);
    }
    return orElse();
  }
}

abstract class _SuccessExperience implements GetOnboardingConfigResponse {
  const factory _SuccessExperience(final ExperienceContent data) =
      _$SuccessExperienceImpl;

  ExperienceContent get data;

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessExperienceImplCopyWith<_$SuccessExperienceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessGoalsImplCopyWith<$Res> {
  factory _$$SuccessGoalsImplCopyWith(
          _$SuccessGoalsImpl value, $Res Function(_$SuccessGoalsImpl) then) =
      __$$SuccessGoalsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoalsStepData data});

  $GoalsStepDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessGoalsImplCopyWithImpl<$Res>
    extends _$GetOnboardingConfigResponseCopyWithImpl<$Res, _$SuccessGoalsImpl>
    implements _$$SuccessGoalsImplCopyWith<$Res> {
  __$$SuccessGoalsImplCopyWithImpl(
      _$SuccessGoalsImpl _value, $Res Function(_$SuccessGoalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessGoalsImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GoalsStepData,
    ));
  }

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoalsStepDataCopyWith<$Res> get data {
    return $GoalsStepDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessGoalsImpl implements _SuccessGoals {
  const _$SuccessGoalsImpl(this.data);

  @override
  final GoalsStepData data;

  @override
  String toString() {
    return 'GetOnboardingConfigResponse.successGoals(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGoalsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGoalsImplCopyWith<_$SuccessGoalsImpl> get copyWith =>
      __$$SuccessGoalsImplCopyWithImpl<_$SuccessGoalsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperienceContent data) successExperience,
    required TResult Function(GoalsStepData data) successGoals,
    required TResult Function(BudgetStepData data) successBudget,
    required TResult Function(RecommendationsStepData data)
        successRecommendations,
    required TResult Function() serverError,
  }) {
    return successGoals(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperienceContent data)? successExperience,
    TResult? Function(GoalsStepData data)? successGoals,
    TResult? Function(BudgetStepData data)? successBudget,
    TResult? Function(RecommendationsStepData data)? successRecommendations,
    TResult? Function()? serverError,
  }) {
    return successGoals?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperienceContent data)? successExperience,
    TResult Function(GoalsStepData data)? successGoals,
    TResult Function(BudgetStepData data)? successBudget,
    TResult Function(RecommendationsStepData data)? successRecommendations,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (successGoals != null) {
      return successGoals(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessExperience value) successExperience,
    required TResult Function(_SuccessGoals value) successGoals,
    required TResult Function(_SuccessBudget value) successBudget,
    required TResult Function(_SuccessRecommendations value)
        successRecommendations,
    required TResult Function(_ServerError value) serverError,
  }) {
    return successGoals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessExperience value)? successExperience,
    TResult? Function(_SuccessGoals value)? successGoals,
    TResult? Function(_SuccessBudget value)? successBudget,
    TResult? Function(_SuccessRecommendations value)? successRecommendations,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return successGoals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessExperience value)? successExperience,
    TResult Function(_SuccessGoals value)? successGoals,
    TResult Function(_SuccessBudget value)? successBudget,
    TResult Function(_SuccessRecommendations value)? successRecommendations,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (successGoals != null) {
      return successGoals(this);
    }
    return orElse();
  }
}

abstract class _SuccessGoals implements GetOnboardingConfigResponse {
  const factory _SuccessGoals(final GoalsStepData data) = _$SuccessGoalsImpl;

  GoalsStepData get data;

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessGoalsImplCopyWith<_$SuccessGoalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessBudgetImplCopyWith<$Res> {
  factory _$$SuccessBudgetImplCopyWith(
          _$SuccessBudgetImpl value, $Res Function(_$SuccessBudgetImpl) then) =
      __$$SuccessBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BudgetStepData data});

  $BudgetStepDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessBudgetImplCopyWithImpl<$Res>
    extends _$GetOnboardingConfigResponseCopyWithImpl<$Res, _$SuccessBudgetImpl>
    implements _$$SuccessBudgetImplCopyWith<$Res> {
  __$$SuccessBudgetImplCopyWithImpl(
      _$SuccessBudgetImpl _value, $Res Function(_$SuccessBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessBudgetImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BudgetStepData,
    ));
  }

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BudgetStepDataCopyWith<$Res> get data {
    return $BudgetStepDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessBudgetImpl implements _SuccessBudget {
  const _$SuccessBudgetImpl(this.data);

  @override
  final BudgetStepData data;

  @override
  String toString() {
    return 'GetOnboardingConfigResponse.successBudget(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessBudgetImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessBudgetImplCopyWith<_$SuccessBudgetImpl> get copyWith =>
      __$$SuccessBudgetImplCopyWithImpl<_$SuccessBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperienceContent data) successExperience,
    required TResult Function(GoalsStepData data) successGoals,
    required TResult Function(BudgetStepData data) successBudget,
    required TResult Function(RecommendationsStepData data)
        successRecommendations,
    required TResult Function() serverError,
  }) {
    return successBudget(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperienceContent data)? successExperience,
    TResult? Function(GoalsStepData data)? successGoals,
    TResult? Function(BudgetStepData data)? successBudget,
    TResult? Function(RecommendationsStepData data)? successRecommendations,
    TResult? Function()? serverError,
  }) {
    return successBudget?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperienceContent data)? successExperience,
    TResult Function(GoalsStepData data)? successGoals,
    TResult Function(BudgetStepData data)? successBudget,
    TResult Function(RecommendationsStepData data)? successRecommendations,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (successBudget != null) {
      return successBudget(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessExperience value) successExperience,
    required TResult Function(_SuccessGoals value) successGoals,
    required TResult Function(_SuccessBudget value) successBudget,
    required TResult Function(_SuccessRecommendations value)
        successRecommendations,
    required TResult Function(_ServerError value) serverError,
  }) {
    return successBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessExperience value)? successExperience,
    TResult? Function(_SuccessGoals value)? successGoals,
    TResult? Function(_SuccessBudget value)? successBudget,
    TResult? Function(_SuccessRecommendations value)? successRecommendations,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return successBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessExperience value)? successExperience,
    TResult Function(_SuccessGoals value)? successGoals,
    TResult Function(_SuccessBudget value)? successBudget,
    TResult Function(_SuccessRecommendations value)? successRecommendations,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (successBudget != null) {
      return successBudget(this);
    }
    return orElse();
  }
}

abstract class _SuccessBudget implements GetOnboardingConfigResponse {
  const factory _SuccessBudget(final BudgetStepData data) = _$SuccessBudgetImpl;

  BudgetStepData get data;

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessBudgetImplCopyWith<_$SuccessBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessRecommendationsImplCopyWith<$Res> {
  factory _$$SuccessRecommendationsImplCopyWith(
          _$SuccessRecommendationsImpl value,
          $Res Function(_$SuccessRecommendationsImpl) then) =
      __$$SuccessRecommendationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecommendationsStepData data});

  $RecommendationsStepDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessRecommendationsImplCopyWithImpl<$Res>
    extends _$GetOnboardingConfigResponseCopyWithImpl<$Res,
        _$SuccessRecommendationsImpl>
    implements _$$SuccessRecommendationsImplCopyWith<$Res> {
  __$$SuccessRecommendationsImplCopyWithImpl(
      _$SuccessRecommendationsImpl _value,
      $Res Function(_$SuccessRecommendationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessRecommendationsImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RecommendationsStepData,
    ));
  }

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecommendationsStepDataCopyWith<$Res> get data {
    return $RecommendationsStepDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessRecommendationsImpl implements _SuccessRecommendations {
  const _$SuccessRecommendationsImpl(this.data);

  @override
  final RecommendationsStepData data;

  @override
  String toString() {
    return 'GetOnboardingConfigResponse.successRecommendations(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessRecommendationsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessRecommendationsImplCopyWith<_$SuccessRecommendationsImpl>
      get copyWith => __$$SuccessRecommendationsImplCopyWithImpl<
          _$SuccessRecommendationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperienceContent data) successExperience,
    required TResult Function(GoalsStepData data) successGoals,
    required TResult Function(BudgetStepData data) successBudget,
    required TResult Function(RecommendationsStepData data)
        successRecommendations,
    required TResult Function() serverError,
  }) {
    return successRecommendations(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperienceContent data)? successExperience,
    TResult? Function(GoalsStepData data)? successGoals,
    TResult? Function(BudgetStepData data)? successBudget,
    TResult? Function(RecommendationsStepData data)? successRecommendations,
    TResult? Function()? serverError,
  }) {
    return successRecommendations?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperienceContent data)? successExperience,
    TResult Function(GoalsStepData data)? successGoals,
    TResult Function(BudgetStepData data)? successBudget,
    TResult Function(RecommendationsStepData data)? successRecommendations,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (successRecommendations != null) {
      return successRecommendations(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessExperience value) successExperience,
    required TResult Function(_SuccessGoals value) successGoals,
    required TResult Function(_SuccessBudget value) successBudget,
    required TResult Function(_SuccessRecommendations value)
        successRecommendations,
    required TResult Function(_ServerError value) serverError,
  }) {
    return successRecommendations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessExperience value)? successExperience,
    TResult? Function(_SuccessGoals value)? successGoals,
    TResult? Function(_SuccessBudget value)? successBudget,
    TResult? Function(_SuccessRecommendations value)? successRecommendations,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return successRecommendations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessExperience value)? successExperience,
    TResult Function(_SuccessGoals value)? successGoals,
    TResult Function(_SuccessBudget value)? successBudget,
    TResult Function(_SuccessRecommendations value)? successRecommendations,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (successRecommendations != null) {
      return successRecommendations(this);
    }
    return orElse();
  }
}

abstract class _SuccessRecommendations implements GetOnboardingConfigResponse {
  const factory _SuccessRecommendations(final RecommendationsStepData data) =
      _$SuccessRecommendationsImpl;

  RecommendationsStepData get data;

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessRecommendationsImplCopyWith<_$SuccessRecommendationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$GetOnboardingConfigResponseCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOnboardingConfigResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'GetOnboardingConfigResponse.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperienceContent data) successExperience,
    required TResult Function(GoalsStepData data) successGoals,
    required TResult Function(BudgetStepData data) successBudget,
    required TResult Function(RecommendationsStepData data)
        successRecommendations,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperienceContent data)? successExperience,
    TResult? Function(GoalsStepData data)? successGoals,
    TResult? Function(BudgetStepData data)? successBudget,
    TResult? Function(RecommendationsStepData data)? successRecommendations,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperienceContent data)? successExperience,
    TResult Function(GoalsStepData data)? successGoals,
    TResult Function(BudgetStepData data)? successBudget,
    TResult Function(RecommendationsStepData data)? successRecommendations,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessExperience value) successExperience,
    required TResult Function(_SuccessGoals value) successGoals,
    required TResult Function(_SuccessBudget value) successBudget,
    required TResult Function(_SuccessRecommendations value)
        successRecommendations,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessExperience value)? successExperience,
    TResult? Function(_SuccessGoals value)? successGoals,
    TResult? Function(_SuccessBudget value)? successBudget,
    TResult? Function(_SuccessRecommendations value)? successRecommendations,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessExperience value)? successExperience,
    TResult Function(_SuccessGoals value)? successGoals,
    TResult Function(_SuccessBudget value)? successBudget,
    TResult Function(_SuccessRecommendations value)? successRecommendations,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements GetOnboardingConfigResponse {
  const factory _ServerError() = _$ServerErrorImpl;
}
