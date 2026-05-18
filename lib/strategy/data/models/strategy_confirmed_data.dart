class StrategyConfirmedData {
  final String portfolioName;
  final String managerName;
  final String avatarInitials;
  final double subscriptionAmount;
  final String connectionDate;
  final String assetPurchaseDate;
  final String whatNextTitle;
  final String whatNextDescription;

  const StrategyConfirmedData({
    required this.portfolioName,
    required this.managerName,
    required this.avatarInitials,
    required this.subscriptionAmount,
    required this.connectionDate,
    required this.assetPurchaseDate,
    required this.whatNextTitle,
    required this.whatNextDescription,
  });
}

final mockConfirmedData = StrategyConfirmedData(
  portfolioName: 'Шариатский портфель',
  managerName: 'Управляет Мурат Кылышбай',
  avatarInitials: 'МК',
  subscriptionAmount: 1000.00,
  connectionDate: '14 мая 2026, 9:30',
  assetPurchaseDate: '15 мая 2026',
  whatNextTitle: 'Что дальше?',
  whatNextDescription:
      'Завтра деньги распределятся между 5 ETF согласно стратегии. Получите push с детализацией каждой покупки.',
);
