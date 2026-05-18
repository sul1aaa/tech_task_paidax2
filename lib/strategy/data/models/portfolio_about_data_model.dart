class PortfolioAboutData {
  final String portfolioName;
  final String managerRole;
  final String avatarInitials;
  final String bio;
  final String subscribersCount;
  final String aum;

  const PortfolioAboutData({
    required this.portfolioName,
    required this.managerRole,
    required this.avatarInitials,
    required this.bio,
    required this.subscribersCount,
    required this.aum,
  });
}

const mockPortfolioAbout = PortfolioAboutData(
  portfolioName: 'Имя Портфеля',
  managerRole: 'Управляющий · CIFA · с 2024 года в Paidax',
  avatarInitials: 'МК',
  bio:
      '8 лет в исламских финансах. Раньше — Bank Negara Malaysia и Al Rajhi Capital.',
  subscribersCount: '1 240+',
  aum: '\$2,4M+',
);
