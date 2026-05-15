import 'package:tech_task_paidax2/core/network/api_response.dart';
import 'package:tech_task_paidax2/onboarding/data/models/get_onboarding_config_response.dart';
import 'package:tech_task_paidax2/onboarding/data/repositories/onboarding_mock_data.dart';

class OnboardingRepository {
  Future<ApiResponse<GetOnboardingConfigResponse>> getExperienceConfig() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return const ApiResponse.value(
      GetOnboardingConfigResponse.successExperience(
          OnboardingMockData.experienceData),
    );
  }

  Future<ApiResponse<GetOnboardingConfigResponse>> getGoalsConfig() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return const ApiResponse.value(
      GetOnboardingConfigResponse.successGoals(OnboardingMockData.goalsData),
    );
  }

  Future<ApiResponse<GetOnboardingConfigResponse>> getBudgetConfig() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return const ApiResponse.value(
      GetOnboardingConfigResponse.successBudget(OnboardingMockData.budgetData),
    );
  }

  Future<ApiResponse<GetOnboardingConfigResponse>>
      getRecommendationsConfig() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return const ApiResponse.value(
      GetOnboardingConfigResponse.successRecommendations(
          OnboardingMockData.recommendationsData),
    );
  }
}
