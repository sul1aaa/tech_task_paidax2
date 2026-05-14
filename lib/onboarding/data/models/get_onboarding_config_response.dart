import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';

part 'get_onboarding_config_response.freezed.dart';

@freezed
class GetOnboardingConfigResponse with _$GetOnboardingConfigResponse {
  const factory GetOnboardingConfigResponse.success(
      OnboardingConfigModel config) = _Success;
  const factory GetOnboardingConfigResponse.serverError() = _ServerError;
}
