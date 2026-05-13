import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/documents/presentation/widgets/document_expiry_dialog_widget.dart';
import 'package:tech_task_paidax2/documents/presentation/widgets/document_update_banner_widget.dart';

class DocumentWidgetsPreviewScreen extends StatelessWidget {
  const DocumentWidgetsPreviewScreen({super.key});

  void _showExpiryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => DocumentExpiryDialog(
        onSendSms: () => Navigator.pop(context),
        onScanDocument: () => Navigator.pop(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Document Widgets')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── Banner (widget 2) ───────────────────────────────────────
            DocumentUpdateBanner(
              onScan: () {},
              onUpdate: () {},
            ),

            const SizedBox(height: 40),

            // ── Button to trigger dialog (widget 1) ─────────────────────
            FilledButton(
              onPressed: () => _showExpiryDialog(context),
              child: const Text('Show Expiry Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
