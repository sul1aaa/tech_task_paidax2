import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/data/models/onboarding_models.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_back_button_widget.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/action_card_widget.dart';
import 'package:tech_task_paidax2/onboarding/presentation/widgets/onboarding_skip_button_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class RecommendationsSheet extends StatelessWidget {
  final StockRecommendationModel stock;
  final ActionCardModel topUpCard;
  final ActionCardModel watchlistCard;
  final RecommendationsContent content;
  final VoidCallback onNext;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  const RecommendationsSheet({
    super.key,
    required this.stock,
    required this.topUpCard,
    required this.watchlistCard,
    required this.content,
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
                  Text(content.title, style: theme.displaySmall),
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
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: PaidaxColors.border, width: 0.2),
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
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(stock.imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            color: PaidaxColors.bg,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(stock.name,
                                        style: theme.headlineMedium),
                                    Text(
                                      '${stock.ticker} · ${stock.exchange}',
                                      style: theme.bodyMedium?.copyWith(
                                          color: PaidaxColors.greyButton),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(stock.price,
                                        style: theme.headlineMedium),
                                    Text(
                                      stock.changePercent,
                                      style: theme.labelMedium?.copyWith(
                                        color: stock.isPositive
                                            ? PaidaxColors.chartPositive
                                            : PaidaxColors.chartNegative,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                content.emptyBalanceText,
                style: theme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: PaidaxColors.secondaryText),
              ),
            ),
            const SizedBox(height: 16),
            ActionCard(
              data: topUpCard,
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
            ActionCard(
              data: watchlistCard,
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
