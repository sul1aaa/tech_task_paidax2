import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/strategy/data/models/etf_assets_model.dart';
import 'package:tech_task_paidax2/strategy/data/models/portfolio_about_data_model.dart';
import 'package:tech_task_paidax2/strategy/data/models/strategy_banner_data_model.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/about_portfolio_card_widget.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/asset_distribution_card_widget.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/strategy_banner_card_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class PortfolioCompositionScreen extends StatefulWidget {
  const PortfolioCompositionScreen({super.key});

  @override
  State<PortfolioCompositionScreen> createState() =>
      _PortfolioCompositionScreenState();
}

class _PortfolioCompositionScreenState
    extends State<PortfolioCompositionScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: PaidaxColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ─── Section 1 Title ────────────────────────────────────
              Text('Состав портфеля', style: theme.headlineLarge),
              const SizedBox(height: 16),

              // ─── Asset Distribution Card ────────────────────────────
              AssetDistributionCard(assets: mockEtfAssets),

              const SizedBox(height: 32),

              // ─── Section 2 Title ────────────────────────────────────
              Text('О Портфеле', style: theme.headlineLarge),
              const SizedBox(height: 16),

              // ─── About Portfolio Card ───────────────────────────────
              PortfolioAboutCard(
                portfolioName: mockPortfolioAbout.portfolioName,
                managerRole: mockPortfolioAbout.managerRole,
                avatarInitials: mockPortfolioAbout.avatarInitials,
                bio: mockPortfolioAbout.bio,
                subscribersCount: mockPortfolioAbout.subscribersCount,
                aum: mockPortfolioAbout.aum,
                onViewProfile: () {},
              ),

              const SizedBox(height: 50),

              StrategyBannerCard(
                data: mockStrategyBanner,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
