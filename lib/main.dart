import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/onboarding/presentation/screens/home_screen.dart';

import 'themes/theme.dart';

void main() {
  runApp(const PaidaxApp());
}

class PaidaxApp extends StatelessWidget {
  const PaidaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paidax',
      debugShowCheckedModeBanner: false,
      theme: buildPaidaxTheme(),
      home: const HomeScreen(),
    );
  }
}
