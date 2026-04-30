import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme.dart';

// Global key for showing snackbars / material banners from anywhere.
final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

/// Root widget of the Paidax application.
///
/// Responsibilities:
///   • Provide the canonical [MaterialApp] with Paidax's brand theme.
///   • Set system UI overlay style (status bar).
///
/// Route management, BLoC provision, and localisation are left to the caller.
class PaidaxApplication extends StatelessWidget {
  /// The router delegate that drives navigation for the whole app.
  final RouterDelegate<Object> routerDelegate;

  const PaidaxApplication({
    super.key,
    required this.routerDelegate,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light, // iOS
      ),
    );

    return MaterialApp.router(
      scaffoldMessengerKey: snackbarKey,
      title: 'Paidax',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      routerDelegate: routerDelegate,
    );
  }

  // ─── Theme ───────────────────────────────────────────────────────────────

  ThemeData _buildTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,

      // ── Colors ────────────────────────────────────────────────────────
      primaryColor: PaidaxColors.primary,
      scaffoldBackgroundColor: PaidaxColors.bg,
      dividerColor: PaidaxColors.divider,

      colorScheme: ColorScheme.fromSeed(
        seedColor: PaidaxColors.primary,
        primary: PaidaxColors.primary,
        onPrimary: PaidaxColors.onPrimaryText,
        secondary: PaidaxColors.primary2,
        onSecondary: PaidaxColors.onPrimaryText,
        tertiary: PaidaxColors.tertiary,
        surface: PaidaxColors.bg,
        onSurface: PaidaxColors.primaryText,
        error: PaidaxColors.error,
        primaryContainer: PaidaxColors.primaryContainer,
        brightness: Brightness.light,
      ),

      // ── Typography ────────────────────────────────────────────────────
      textTheme: _buildTextTheme(
        baseColor: PaidaxColors.primaryText,
        decorationColor: PaidaxColors.primaryText,
      ),

      primaryTextTheme: _buildTextTheme(
        baseColor: PaidaxColors.primary,
        decorationColor: PaidaxColors.primary,
      ),

      // ── Progress indicator ────────────────────────────────────────────
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: PaidaxColors.primary,
      ),

      // ── AppBar ────────────────────────────────────────────────────────
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: PaidaxColors.barBg,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: PaidaxColors.barIcon),
        actionsIconTheme: IconThemeData(color: PaidaxColors.barIcon),
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          color: PaidaxColors.barForeground,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),

      // ── Bottom navigation ─────────────────────────────────────────────
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 8,
        backgroundColor: PaidaxColors.bg,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: PaidaxColors.primary,
        unselectedItemColor: PaidaxColors.secondaryText,
        type: BottomNavigationBarType.fixed,
      ),

      // ── NavigationBar (Material 3) ────────────────────────────────────
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: PaidaxColors.bg,
        indicatorColor: PaidaxColors.primaryContainer,
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: 11,
            fontWeight: states.contains(WidgetState.selected)
                ? FontWeight.w600
                : FontWeight.w400,
            color: states.contains(WidgetState.selected)
                ? PaidaxColors.primary
                : PaidaxColors.secondaryText,
          ),
        ),
      ),

      // ── TabBar ────────────────────────────────────────────────────────
      tabBarTheme: const TabBarTheme(
        indicatorColor: PaidaxColors.primary,
        dividerColor: PaidaxColors.divider,
        labelColor: PaidaxColors.primaryText,
        unselectedLabelColor: PaidaxColors.secondaryText,
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        unselectedLabelStyle:
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),

      // ── Buttons ───────────────────────────────────────────────────────
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: PaidaxColors.primary,
          foregroundColor: PaidaxColors.onPrimaryText,
          disabledBackgroundColor: PaidaxColors.containerBg,
          disabledForegroundColor: PaidaxColors.secondaryText,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: PaidaxColors.containerBg,
          foregroundColor: PaidaxColors.primaryText,
          disabledBackgroundColor: Colors.grey,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: PaidaxColors.primary,
          side: const BorderSide(color: PaidaxColors.primary, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: PaidaxColors.primary,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),

      // ── Floating action button ────────────────────────────────────────
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: CircleBorder(),
        backgroundColor: PaidaxColors.primary,
        foregroundColor: PaidaxColors.onPrimaryText,
        elevation: 4,
        hoverElevation: 6,
      ),

      // ── Input / TextField ─────────────────────────────────────────────
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: const TextStyle(
          fontSize: 15,
          color: PaidaxColors.secondaryText,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: const TextStyle(
          fontSize: 15,
          color: PaidaxColors.secondaryText,
          overflow: TextOverflow.visible,
        ),
        floatingLabelStyle: const TextStyle(
          fontSize: 13,
          color: PaidaxColors.primary,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1.5, color: PaidaxColors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1.5, color: PaidaxColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1.5, color: PaidaxColors.error),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0, color: Colors.transparent),
        ),
      ),

      // ── Card ──────────────────────────────────────────────────────────
      cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: PaidaxColors.divider, width: 1),
        ),
      ),

      // ── List tile ─────────────────────────────────────────────────────
      listTileTheme: const ListTileThemeData(
        textColor: PaidaxColors.primaryText,
        iconColor: PaidaxColors.primaryText,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),

      // ── Chip ──────────────────────────────────────────────────────────
      chipTheme: ChipThemeData(
        backgroundColor: PaidaxColors.greyBg,
        selectedColor: PaidaxColors.primaryContainer,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: PaidaxColors.primaryText,
        ),
        side: const BorderSide(color: PaidaxColors.divider, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      // ── Divider ───────────────────────────────────────────────────────
      dividerTheme: const DividerThemeData(
        color: PaidaxColors.divider,
        thickness: 1,
        space: 1,
      ),

      // ── Switch ────────────────────────────────────────────────────────
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? PaidaxColors.onPrimaryText
              : PaidaxColors.secondaryText;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? PaidaxColors.primary
              : PaidaxColors.grey;
        }),
      ),

      // ── Checkbox ──────────────────────────────────────────────────────
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? PaidaxColors.primary
              : Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(PaidaxColors.onPrimaryText),
        side: const BorderSide(color: PaidaxColors.border, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),

      // ── Radio ─────────────────────────────────────────────────────────
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? PaidaxColors.primary
              : PaidaxColors.secondaryText;
        }),
      ),

      // ── Snackbar ──────────────────────────────────────────────────────
      snackBarTheme: SnackBarThemeData(
        backgroundColor: PaidaxColors.primaryText,
        contentTextStyle: const TextStyle(
          color: PaidaxColors.onPrimaryText,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        behavior: SnackBarBehavior.floating,
      ),

      // ── Bottom sheet ──────────────────────────────────────────────────
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: PaidaxColors.bg,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        showDragHandle: true,
        dragHandleColor: PaidaxColors.grey,
        elevation: 8,
      ),

      // ── Dialog ────────────────────────────────────────────────────────
      dialogTheme: DialogTheme(
        backgroundColor: PaidaxColors.bg,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titleTextStyle: const TextStyle(
          color: PaidaxColors.primaryText,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        contentTextStyle: const TextStyle(
          color: PaidaxColors.secondaryText,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),

      // ── Tooltip ───────────────────────────────────────────────────────
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: PaidaxColors.primaryText.withOpacity(0.9),
          borderRadius: BorderRadius.circular(6),
        ),
        textStyle: const TextStyle(
          color: PaidaxColors.onPrimaryText,
          fontSize: 12,
        ),
      ),
    );
  }

  // ─── Text Theme Builder ───────────────────────────────────────────────────

  TextTheme _buildTextTheme({
    required Color baseColor,
    required Color decorationColor,
  }) {
    return TextTheme(
      displayLarge: TextStyle(
          color: baseColor,
          fontSize: 32,
          fontWeight: FontWeight.w400,
          decorationColor: decorationColor),
      displayMedium: TextStyle(
          color: baseColor,
          fontSize: 28,
          fontWeight: FontWeight.w400,
          decorationColor: decorationColor),
      displaySmall: TextStyle(
          color: baseColor,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          decorationColor: decorationColor),
      headlineLarge: TextStyle(
          color: baseColor,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          decorationColor: decorationColor),
      headlineMedium: TextStyle(
          color: baseColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          decorationColor: decorationColor),
      headlineSmall: TextStyle(
          color: baseColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          decorationColor: decorationColor),
      titleLarge: TextStyle(
          color: baseColor,
          fontSize: 17,
          fontWeight: FontWeight.w700,
          decorationColor: decorationColor),
      titleMedium: TextStyle(
          color: baseColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          decorationColor: decorationColor),
      titleSmall: TextStyle(
          color: baseColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          decorationColor: decorationColor),
      bodyLarge: TextStyle(
          color: baseColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          decorationColor: decorationColor),
      bodyMedium: TextStyle(
          color: baseColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          decorationColor: decorationColor),
      bodySmall: TextStyle(
          color: baseColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          decorationColor: decorationColor),
      labelLarge: TextStyle(
          color: baseColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          decorationColor: decorationColor),
      labelMedium: TextStyle(
          color: baseColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          decorationColor: decorationColor),
      labelSmall: TextStyle(
          color: baseColor,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          decorationColor: decorationColor),
    );
  }
}
