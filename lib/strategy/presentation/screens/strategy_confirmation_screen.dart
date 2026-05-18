import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/strategy/data/models/strategy_confirmation_data_model.dart';
import 'package:tech_task_paidax2/strategy/presentation/screens/strategy_confirmed_screen.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/app_divider_widget.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/gradient_avatar_widget.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/param_row_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class StrategyConfirmationScreen extends StatefulWidget {
  final StrategyConfirmationData? data;

  const StrategyConfirmationScreen({
    super.key,
    this.data,
  });

  @override
  State<StrategyConfirmationScreen> createState() =>
      _StrategyConfirmationScreenState();
}

class _StrategyConfirmationScreenState
    extends State<StrategyConfirmationScreen> {
  bool _isAgreed = false;
  late StrategyConfirmationData _data;

  @override
  void initState() {
    super.initState();
    _data = widget.data ?? mockConfirmationData;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: PaidaxColors.bg,
      appBar: AppBar(
        backgroundColor: PaidaxColors.barBg,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: PaidaxColors.barIcon),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Подтверждение',
            style: theme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.w700, letterSpacing: -0.45)),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GradientAvatarWidget(
                  initials: _data.avatarInitials,
                  outerSize: 52,
                  innerSize: 44,
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_data.portfolioName, style: theme.titleLarge),
                    const SizedBox(height: 2),
                    Text(
                      _data.managerName,
                      style: theme.bodySmall?.copyWith(
                          color: PaidaxColors.secondaryText, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: PaidaxColors.surfaceLight,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: PaidaxColors.primary.withOpacity(0.65),
                  width: 0.65,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Сумма подписки',
                    style: theme.bodyMedium?.copyWith(
                        color: PaidaxColors.secondaryText,
                        fontSize: 13,
                        height: 1.5),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '\$ ${_data.subscriptionAmount.toStringAsFixed(0).replaceAllMapped(
                          RegExp(r'(\d)(?=(\d{3})+$)'),
                          (m) => '${m[1]} ',
                        )}',
                    style: theme.displayMedium
                        ?.copyWith(color: PaidaxColors.primary, fontSize: 34),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23),
            Text('Параметры подписки', style: theme.titleMedium),
            const SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border(
                  top: BorderSide(
                    color: Color(0xFFF1F5F9),
                    width: 0.65,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0F000000), // #000000 at 6%
                    offset: Offset(0, 1),
                    blurRadius: 1.5,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  ParamRow(
                    label: 'Комиссия за подключение',
                    value: _data.connectionFee,
                    theme: theme,
                  ),
                  AppDivider(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                  ),
                  ParamRow(
                    label: 'Комиссия за управление',
                    value: _data.managementFee,
                    theme: theme,
                  ),
                  AppDivider(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                  ),
                  ParamRow(
                    label: 'Дата первой покупки активов',
                    value: _data.firstPurchaseDate,
                    theme: theme,
                  ),
                  AppDivider(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                  ),
                  ParamRow(
                    label: 'Ближайшая ребалансировка',
                    value: _data.nextRebalancing,
                    theme: theme,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              decoration: BoxDecoration(
                color: PaidaxColors.infoNoteBg,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outline_rounded,
                    size: 16,
                    color: PaidaxColors.primary,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Активы будут куплены в ближайший торговый день. Деньги и активы хранятся в кастоди отдельно от Paidax.',
                      style: theme.bodySmall?.copyWith(
                        color: PaidaxColors.primaryText,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isAgreed,
                  onChanged: (val) => setState(() => _isAgreed = val ?? false),
                  activeColor: PaidaxColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: theme.bodySmall?.copyWith(
                          color: PaidaxColors.primaryText, fontSize: 13),
                      children: [
                        const TextSpan(text: 'Согласен с '),
                        TextSpan(
                          text: 'договором управления',
                          style: theme.bodySmall?.copyWith(
                              color: PaidaxColors.primary, fontSize: 13),
                        ),
                        const TextSpan(text: ' и '),
                        TextSpan(
                          text: 'тарифами',
                          style: theme.bodySmall?.copyWith(
                              color: PaidaxColors.primary, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: _isAgreed ? 1.0 : 0.4,
              child: FilledButton(
                onPressed: _isAgreed
                    ? () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const StrategyConfirmedScreen(),
                          ),
                        )
                    : null,
                child: Text(
                  'Подключить за \$${_data.subscriptionAmount.toStringAsFixed(0)}',
                  style: theme.labelLarge?.copyWith(
                    color: PaidaxColors.onPrimaryText,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
