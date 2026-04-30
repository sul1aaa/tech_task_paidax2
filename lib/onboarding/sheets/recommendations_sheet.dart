import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/widgets/recommended_stock_card.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class RecommendationsSheet extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onBack;

  const RecommendationsSheet({
    super.key,
    required this.onNext,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaidaxColors.onboardingBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ── Header row: skip only ────────────────────────────────────────
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16),
            child: const Row(
              children: [
                Spacer(),
                Text(
                  'Пропустить',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: PaidaxColors.primary,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // ── Title ────────────────────────────────────────────────────────
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Подобрали для вас',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: PaidaxColors.primaryText,
                height: 1.2,
              ),
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
                    // TOP IMAGE SECTION
                    Container(
                      height: 180,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/apple_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // BOTTOM INFO SECTION
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: PaidaxColors.stockCardShadow,
                            blurRadius: 30,
                            spreadRadius: 0,
                            offset: const Offset(0, 8),
                          ),
                        ],
                        color: PaidaxColors.bg,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          // LEFT TEXT
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Apple Inc.',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: PaidaxColors.primaryText,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'AAPL · NASDAQ',
                                style: TextStyle(
                                    color: PaidaxColors.secondaryText),
                              ),
                            ],
                          ),

                          // RIGHT PRICE
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$189.43',
                                style: TextStyle(
                                  color: PaidaxColors.primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.45,
                                ),
                              ),
                              Text(
                                '+1.24%',
                                style: TextStyle(
                                  color: PaidaxColors.shariaCompliantGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
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

          const SizedBox(height: 4),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'На счёте пока пусто',
              style: TextStyle(
                  fontSize: 16,
                  letterSpacing: -0.31,
                  color: PaidaxColors.secondaryText,
                  fontWeight: FontWeight.w500),
            ),
          ),

          const SizedBox(height: 16),
          const TopUpCard(),

          const SizedBox(height: 16),
          const WantStockCard(),
        ],
      ),
    );
  }
}
