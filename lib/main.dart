import 'package:flutter/material.dart';
import 'themes/theme.dart';
import 'onboarding/presentation/screens/home_screen.dart';

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
      theme: PaidaxTheme.buildTheme(),
      home: const HomeScreen(),
    );
  }
}
