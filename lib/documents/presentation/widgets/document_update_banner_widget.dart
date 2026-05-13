import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../themes/theme.dart';

/// Compact inline banner — "Обновите документ"
class DocumentUpdateBanner extends StatelessWidget {
  final VoidCallback onScan;
  final VoidCallback onUpdate;

  const DocumentUpdateBanner({
    super.key,
    required this.onScan,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: PaidaxColors.divider, width: 1),
        boxShadow: const [
          BoxShadow(
              color: PaidaxColors.boxShadow,
              blurRadius: 50,
              offset: Offset(0, 25),
              spreadRadius: -12),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: PaidaxColors.warningBg,
                ),
                child: const Icon(
                  Icons.error_outline_rounded,
                  color: PaidaxColors.amberWarning,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Обновите документ',
                        style: theme.titleSmall?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.31)),
                    const SizedBox(height: 2),
                    Text(
                      'Обновите документ, чтобы продолжить работу.',
                      style: theme.bodySmall?.copyWith(
                          color: PaidaxColors.secondaryText,
                          fontSize: 14,
                          letterSpacing: -0.15),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: PaidaxColors.greyBg,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 16,
                          width: 16,
                          child:
                              SvgPicture.asset('assets/images/icon_scan.svg')),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Text(
                          'Сканировать',
                          style: theme.labelMedium?.copyWith(
                              color: PaidaxColors.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.31),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: PaidaxColors.primary,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Обновить',
                    style: theme.labelMedium?.copyWith(
                        color: PaidaxColors.surfaceLight,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.31),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
