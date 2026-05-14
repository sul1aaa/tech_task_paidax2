// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(T value) value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(T value)? value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(T value)? value,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_Value<T> value) value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_Value<T> value)? value,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_Value<T> value)? value,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<T, $Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl<T> value, $Res Function(_$NoInternetImpl<T>) then) =
      __$$NoInternetImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$NoInternetImpl<T>>
    implements _$$NoInternetImplCopyWith<T, $Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl<T> _value, $Res Function(_$NoInternetImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoInternetImpl<T> implements _NoInternet<T> {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'ApiResponse<$T>.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(T value) value,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(T value)? value,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(T value)? value,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_Value<T> value) value,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_Value<T> value)? value,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_Value<T> value)? value,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet<T> implements ApiResponse<T> {
  const factory _NoInternet() = _$NoInternetImpl<T>;
}

/// @nodoc
abstract class _$$ValueImplCopyWith<T, $Res> {
  factory _$$ValueImplCopyWith(
          _$ValueImpl<T> value, $Res Function(_$ValueImpl<T>) then) =
      __$$ValueImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$ValueImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ValueImpl<T>>
    implements _$$ValueImplCopyWith<T, $Res> {
  __$$ValueImplCopyWithImpl(
      _$ValueImpl<T> _value, $Res Function(_$ValueImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ValueImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueImpl<T> implements _Value<T> {
  const _$ValueImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ApiResponse<$T>.value(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueImplCopyWith<T, _$ValueImpl<T>> get copyWith =>
      __$$ValueImplCopyWithImpl<T, _$ValueImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(T value) value,
  }) {
    return value(this.value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(T value)? value,
  }) {
    return value?.call(this.value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(T value)? value,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this.value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_Value<T> value) value,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_Value<T> value)? value,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_Value<T> value)? value,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class _Value<T> implements ApiResponse<T> {
  const factory _Value(final T value) = _$ValueImpl<T>;

  T get value;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueImplCopyWith<T, _$ValueImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
