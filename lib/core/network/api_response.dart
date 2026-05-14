import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.noInternet() = _NoInternet;
  const factory ApiResponse.value(T value) = _Value;
}
