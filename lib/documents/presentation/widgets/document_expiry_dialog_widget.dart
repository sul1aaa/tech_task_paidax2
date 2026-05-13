import 'package:flutter/material.dart';
import '../../../themes/theme.dart';

/// Large centered dialog — "Срок действия документа истекает"
class DocumentExpiryDialog extends StatelessWidget {
  final VoidCallback onSendSms;
  final VoidCallback onScanDocument;

  const DocumentExpiryDialog({
    super.key,
    required this.onSendSms,
    required this.onScanDocument,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: PaidaxColors.surfaceLight,
              ),
              child: const Icon(
                Icons.error_outline_rounded,
                color: PaidaxColors.primary,
                size: 32,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Срок действия документа истекает. Обновите его для продолжения работы сервиса.',
              style: theme.titleMedium?.copyWith(letterSpacing: -0.44),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 28),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x332B7FFF),
                    offset: const Offset(0, 4),
                    blurRadius: 6,
                    spreadRadius: -4,
                  ),
                  BoxShadow(
                    color: const Color(0x332B7FFF),
                    offset: const Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: -3,
                  ),
                ],
              ),
              child: FilledButton(
                onPressed: onSendSms,
                style: FilledButton.styleFrom(
                  minimumSize: const Size(double.infinity, 52),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'Отправить СМС',
                  style: theme.titleMedium
                      ?.copyWith(color: PaidaxColors.bg, letterSpacing: -0.31),
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: onScanDocument,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                minimumSize: const Size(double.infinity, 52),
                backgroundColor: PaidaxColors.greyBg,
                foregroundColor: PaidaxColors.primaryText,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text(
                'Сканировать документ',
                style: theme.titleMedium?.copyWith(
                    color: PaidaxColors.primaryText, letterSpacing: -0.31),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
