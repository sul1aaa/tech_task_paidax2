import 'package:tech_task_paidax2/core/network/api_response.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/data/models/get_onboarding_config_response.dart';

class OnboardingRepository {
  Future<ApiResponse<GetOnboardingConfigResponse>> getOnboardingConfig() async {
    await Future.delayed(const Duration(milliseconds: 800));

    const config = OnboardingConfigModel(
      stock: StockRecommendationModel(
        name: 'Apple Inc.',
        ticker: 'AAPL',
        exchange: 'NASDAQ',
        price: '\$189.43',
        changePercent: '+1.24%',
        isPositive: true,
        imagePath: 'assets/images/apple_image.png',
      ),
      topUpCard: ActionCardModel(
        title: 'Пополнить и купить',
        subtitle: 'Через Kaspi – мгновенно',
        iconPath: 'assets/images/icon_card.png',
      ),
      watchlistCard: ActionCardModel(
        title: 'Хочу эту акцию',
        subtitle: 'Сохраню и куплю позже',
        iconPath: 'assets/images/icon_star.png',
      ),
      budgetRanges: [
        BudgetRangeModel(
            id: 'starter', label: '<50k ₸', sublabel: 'Легкий старт'),
        BudgetRangeModel(
            id: 'casual', label: '50 – 200k ₸', sublabel: 'Оптимальный выбор'),
        BudgetRangeModel(
            id: 'whale', label: '>200k ₸', sublabel: 'Премиальный портфель'),
      ],
      goals: [
        GoalOptionModel(
            id: 'halal',
            label: 'Халяль',
            icon: 'assets/images/icon_star_black.png'),
        GoalOptionModel(
            id: 'income',
            label: 'Доход',
            icon: 'assets/images/icon_arrow_black.png'),
        GoalOptionModel(
            id: 'safety',
            label: 'Надёжность',
            icon: 'assets/images/icon_shield.png'),
        GoalOptionModel(
            id: 'diversity',
            label: 'Разнообразие',
            icon: 'assets/images/icon_grid.png'),
      ],
      // ── texts ──
      recommendationsContent: RecommendationsContent(
        title: 'Подобрали для вас',
        emptyBalanceText: 'На счёте пока пусто',
      ),
      budgetContent: BudgetContent(
        title: 'С какой суммы\nначнём?',
        infoNote: 'Мы подберём активы на основе вашего выбора.',
      ),
      experienceContent: ExperienceContent(
        title: 'Расскажите о себе',
        subtitle: 'Ваш опыт поможет нам...',
        levels: [
          ExperienceLevelModel(
            id: 'beginner',
            label: 'Новичок',
            description: 'Только начинаю свой путь в мире инвестиций',
            iconPath: 'assets/images/icon_plant.png',
          ),
          ExperienceLevelModel(
            id: 'intermediate',
            label: 'Инвестировал',
            description: 'Есть базовые знания и первый опыт сделок',
            iconPath: 'assets/images/icon_arrow.png',
          ),
          ExperienceLevelModel(
            id: 'expert',
            label: 'Регулярно',
            description: 'Активно торгую и слежу за рынком',
            iconPath: 'assets/images/icon_stats.png',
          ),
        ],
      ),
      goalsContent: GoalsContent(
        title: 'Что для вас важно?',
        subtitle: 'Выберите одно или несколько',
      ),
    );

    return const ApiResponse.value(
      GetOnboardingConfigResponse.success(config),
    );
  }
}
