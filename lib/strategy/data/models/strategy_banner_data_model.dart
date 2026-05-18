class StrategyBannerData {
  final String title;
  final String returnRate;
  final String minAmount;
  final int assetsCount;

  const StrategyBannerData({
    required this.title,
    required this.returnRate,
    required this.minAmount,
    required this.assetsCount,
  });
}

const mockStrategyBanner = StrategyBannerData(
  title: 'Портфель для подписки',
  returnRate: '+18.2%',
  minAmount: '\$100',
  assetsCount: 5,
);
