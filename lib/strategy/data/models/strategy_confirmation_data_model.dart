import 'dart:ui';
import 'package:tech_task_paidax2/themes/theme.dart';

class StrategyConfirmationData {
  final String portfolioName;
  final String managerName;
  final String avatarInitials;
  final Color avatarColor;
  final double subscriptionAmount;
  final String connectionFee;
  final String managementFee;
  final String firstPurchaseDate;
  final String nextRebalancing;

  const StrategyConfirmationData({
    required this.portfolioName,
    required this.managerName,
    required this.avatarInitials,
    required this.avatarColor,
    required this.subscriptionAmount,
    required this.connectionFee,
    required this.managementFee,
    required this.firstPurchaseDate,
    required this.nextRebalancing,
  });
}

final mockConfirmationData = StrategyConfirmationData(
  portfolioName: 'Шариатский портфель',
  managerName: 'Управляющий — Мурат Кылышбай',
  avatarInitials: 'МК',
  avatarColor: PaidaxColors.shariaCompliantGreen,
  subscriptionAmount: 1000,
  connectionFee: '\$1.00',
  managementFee: '1,5% в год',
  firstPurchaseDate: '15 мая 2026',
  nextRebalancing: '30 июня 2026',
);
