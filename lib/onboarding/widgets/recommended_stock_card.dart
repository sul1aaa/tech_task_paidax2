import 'package:flutter/material.dart';

import '../../themes/theme.dart';

class StockData {
  final String ticker;
  final String name;
  final String price;
  final String change;
  final bool isPositive;
  final List<double> sparkline; // normalized 0–1 values for mini chart

  const StockData({
    required this.ticker,
    required this.name,
    required this.price,
    required this.change,
    required this.isPositive,
    required this.sparkline,
  });
}

/// A polished stock recommendation card shown on the final onboarding screen.
class RecommendedStockCard extends StatelessWidget {
  final StockData stock;
  final VoidCallback? onTap;

  const RecommendedStockCard({
    super.key,
    required this.stock,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final priceColor =
        stock.isPositive ? PaidaxColors.shareRising : PaidaxColors.shareFalling;
    final bgColor = stock.isPositive
        ? PaidaxColors.shareBackgroundRising
        : PaidaxColors.shareBackgroundFalling;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: PaidaxColors.divider, width: 1),
          boxShadow: const [
            BoxShadow(
              color: PaidaxColors.boxShadow,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // Ticker avatar
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: PaidaxColors.backgroundSoftBlue,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  stock.ticker.length > 2
                      ? stock.ticker.substring(0, 2)
                      : stock.ticker,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: PaidaxColors.primary,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),

            // Name + ticker
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stock.ticker,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: PaidaxColors.primaryText,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    stock.name,
                    style: const TextStyle(
                      fontSize: 12,
                      color: PaidaxColors.secondaryText,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            // Mini sparkline chart
            SizedBox(
              width: 56,
              height: 32,
              child: CustomPaint(),
            ),
            const SizedBox(width: 12),

            // Price + change
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  stock.price,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: PaidaxColors.primaryText,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    stock.change,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: priceColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------

class TopUpCard extends StatelessWidget {
  const TopUpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 34),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Color(0xff135BEC)),
      child: Row(
        children: [
          // TEXTS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Пополнить и купить',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: -0.31),
                ),
                Text(
                  'Через Kaspi – мгновенно',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          // ICON
          const Icon(
            Icons.credit_card,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

//---------------------------------------------

class WantStockCard extends StatelessWidget {
  const WantStockCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 34),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF3F4F6)),
          borderRadius: BorderRadius.circular(14),
          color: Colors.white),
      child: Row(
        children: [
          // TEXTS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Хочу эту акцию',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      letterSpacing: -0.31),
                ),
                Text(
                  'Сохраню и куплю позже',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          // ICON
          const Icon(Icons.credit_card, color: Color(0xff135BEC)),
        ],
      ),
    );
  }
}
