import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_back_button_widget.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/action_card_widget.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_skip_button_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class RecommendationsSheet extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  const RecommendationsSheet({
    super.key,
    required this.onNext,
    required this.onBack,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return SafeArea(
      child: Container(
        color: PaidaxColors.onboardingBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnboardingBackButton(onTap: onBack),
                  OnboardingSkipButton(onSkip: onSkip),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Row(
                children: [
                  Text('Подобрали для вас', style: theme.displaySmall),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: PaidaxColors.bg),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: PaidaxColors.border, width: 0.2),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: PaidaxColors.stockCardShadow,
                              blurRadius: 30,
                              spreadRadius: 0,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/apple_image.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                color: PaidaxColors.bg,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Apple Inc.',
                                            style: theme.headlineMedium),
                                        Text('AAPL · NASDAQ',
                                            style: theme.bodyMedium?.copyWith(
                                                color:
                                                    PaidaxColors.greyButton)),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text('\$189.43',
                                            style: theme.headlineMedium),
                                        Text('+1.24%',
                                            style: theme.labelMedium?.copyWith(
                                                color: PaidaxColors
                                                    .chartPositive)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'На счёте пока пусто',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: PaidaxColors.secondaryText),
              ),
            ),
            const SizedBox(height: 16),
            ActionCard(
              title: 'Пополнить и купить',
              subtitle: 'Через Kaspi – мгновенно',
              iconPath: 'assets/images/icon_card.png',
              backgroundColor: PaidaxColors.topUpCardBg,
              titleColor: PaidaxColors.onPrimaryText,
              subtitleColor: PaidaxColors.darkSecondaryText,
              shadows: const [
                BoxShadow(
                  color: Color(0x33135BEC),
                  offset: Offset(0, 4),
                  blurRadius: 6,
                  spreadRadius: -4,
                ),
                BoxShadow(
                  color: Color(0x33135BEC),
                  offset: Offset(0, 10),
                  blurRadius: 15,
                  spreadRadius: -3,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const ActionCard(
              title: 'Хочу эту акцию',
              subtitle: 'Сохраню и куплю позже',
              iconPath: 'assets/images/icon_star.png',
              backgroundColor: PaidaxColors.bg,
              titleColor: PaidaxColors.primaryText,
              subtitleColor: PaidaxColors.secondaryText,
              borderColor: PaidaxColors.wantStockBorder,
            ),
          ],
        ),
      ),
    );
  }
}
