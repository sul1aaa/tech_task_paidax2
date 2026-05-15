import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';

part 'get_onboarding_config_response.freezed.dart';

@freezed
class GetOnboardingConfigResponse with _$GetOnboardingConfigResponse {
  const factory GetOnboardingConfigResponse.successExperience(
      ExperienceContent data) = _SuccessExperience;
  const factory GetOnboardingConfigResponse.successGoals(GoalsStepData data) =
      _SuccessGoals;
  const factory GetOnboardingConfigResponse.successBudget(BudgetStepData data) =
      _SuccessBudget;
  const factory GetOnboardingConfigResponse.successRecommendations(
      RecommendationsStepData data) = _SuccessRecommendations;
  const factory GetOnboardingConfigResponse.serverError() = _ServerError;
}
