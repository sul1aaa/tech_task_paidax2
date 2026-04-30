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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ── Header row: back only ────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 16),
          child: Row(
            children: [
              Spacer(),
              const Text(
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

        // ── Title — left, emoji inline ───────────────────────────────────
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
              border:
                  Border.all(color: const Color.fromARGB(255, 209, 209, 209)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TOP IMAGE SECTION
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/apple_image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // BOTTOM INFO SECTION
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // LEFT TEXT
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Apple Inc.',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'AAPL · NASDAQ',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),

                        // RIGHT PRICE
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '\$189.43',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.45),
                            ),
                            Text(
                              '+1.24%',
                              style: TextStyle(
                                  color: Color(0xff00BC7D),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
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
        TopUpCard(),

        const SizedBox(height: 16),
        WantStockCard(),
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  final VoidCallback onTap;
  const _BackButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: PaidaxColors.greyBg,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 18,
          color: PaidaxColors.primaryText,
        ),
      ),
    );
  }
}
