import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/documents/presentation/widgets/success_icon_widget.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class DocumentUpdatedScreen extends StatelessWidget {
  final VoidCallback onGoBack;

  const DocumentUpdatedScreen({
    super.key,
    required this.onGoBack,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const Center(child: SuccessIcon()),
              const SizedBox(height: 32),
              Column(
                children: [
                  Text(
                    'Документ обновлён',
                    style: theme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w700, letterSpacing: -0.39),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Данные успешно обновлены. Вы можете продолжить пользоваться сервисом.',
                    style: theme.bodyLarge
                        ?.copyWith(color: PaidaxColors.alertSecondaryText),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Spacer(),
              FilledButton(
                onPressed: onGoBack,
                style: FilledButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Go back',
                  style: theme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: PaidaxColors.accent,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
