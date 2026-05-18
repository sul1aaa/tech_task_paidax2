import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/screens/home_screen.dart';
import 'package:tech_task_paidax2/strategy/data/models/strategy_confirmed_data.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/app_divider_widget.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/gradient_avatar_widget.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/info_row_widget.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/success_icon_green_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class StrategyConfirmedScreen extends StatelessWidget {
  final StrategyConfirmedData? data;

  const StrategyConfirmedScreen({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final d = data ?? mockConfirmedData;

    return Scaffold(
      backgroundColor: PaidaxColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              SuccessIconGreen(),
              const SizedBox(height: 22),
              Text(
                'Стратегия подключена',
                textAlign: TextAlign.center,
                style: theme.displaySmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Активы будут куплены в ближайший\n торговый день',
                textAlign: TextAlign.center,
                style: theme.bodyMedium?.copyWith(
                  color: PaidaxColors.secondaryText,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PaidaxColors.greyBg2,
                  borderRadius: BorderRadius.circular(14),
                  border: const Border(),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GradientAvatarWidget(
                          initials: d.avatarInitials,
                          outerSize: 36,
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              d.portfolioName,
                              style: theme.titleSmall,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              d.managerName,
                              style: theme.bodySmall?.copyWith(
                                color: PaidaxColors.secondaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    AppDivider(
                      padding: EdgeInsets.only(top: 14, bottom: 6),
                    ),
                    InfoRow(
                      label: 'Сумма подписки',
                      value:
                          '\$${d.subscriptionAmount.toStringAsFixed(2).replaceAllMapped(
                                RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                                (m) => '${m[1]} ',
                              )}',
                      valueColor: PaidaxColors.primary,
                      theme: theme,
                    ),
                    InfoRow(
                      label: 'Дата подключения',
                      value: d.connectionDate,
                      theme: theme,
                    ),
                    InfoRow(
                      label: 'Покупка активов',
                      value: d.assetPurchaseDate,
                      theme: theme,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF3FE),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xFFDBEAFE),
                    width: 0.65,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          color: PaidaxColors.bg,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.access_time_rounded,
                        size: 14,
                        color: PaidaxColors.primary,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            d.whatNextTitle,
                            style: theme.titleSmall,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            d.whatNextDescription,
                            style: theme.bodySmall?.copyWith(
                              color: PaidaxColors.secondaryText,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Перейти к стратегии',
                      style: theme.titleMedium?.copyWith(
                        color: PaidaxColors.onPrimaryText,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.arrow_forward,
                      color: PaidaxColors.onPrimaryText,
                      size: 18,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'На главную',
                  style: theme.titleSmall?.copyWith(
                    color: PaidaxColors.primaryText,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
