import 'package:flutter/material.dart';

import 'themes/theme.dart';
import 'home_screen.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: PaidaxColors.primary,
        scaffoldBackgroundColor: PaidaxColors.bg,
        colorScheme: ColorScheme.fromSeed(
          seedColor: PaidaxColors.primary,
          primary: PaidaxColors.primary,
          onPrimary: PaidaxColors.onPrimaryText,
          surface: PaidaxColors.bg,
          onSurface: PaidaxColors.primaryText,
          error: PaidaxColors.error,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              color: PaidaxColors.primaryText,
              fontSize: 32,
              fontWeight: FontWeight.w700),
          titleLarge: TextStyle(
              color: PaidaxColors.primaryText,
              fontSize: 22,
              fontWeight: FontWeight.w700),
          titleMedium: TextStyle(
              color: PaidaxColors.primaryText,
              fontSize: 17,
              fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(
              color: PaidaxColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: PaidaxColors.secondaryText,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          labelLarge: TextStyle(
              color: PaidaxColors.onPrimaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: PaidaxColors.primary,
            foregroundColor: PaidaxColors.onPrimaryText,
            minimumSize: const Size(double.infinity, 54),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: PaidaxColors.bg,
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: PaidaxColors.primaryText),
          titleTextStyle: TextStyle(
            color: PaidaxColors.primaryText,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
