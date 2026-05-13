import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaidaxColors {
  PaidaxColors._();

  // ── Brand / Primary ──────────────────────────────────────────────────────
  static const Color primary = Color(0xFF0038FF);
  static const Color primary2 = Color(0xFF1A73E8);
  static const Color primaryContainer = Color(0x335750FA);
  static const Color surfaceLight = Color(0xFFEFF3FE);
  static const Color backgroundSoftBlue = Color(0xFFF0F6FE);
  static const Color lightBlue = Color(0x804B39EF);

  // ── Accent / Tertiary ────────────────────────────────────────────────────
  static const Color tertiary = Color(0xFFEE8B60);
  static const Color accent = Color(0xFFFFE4F0);

  // ── Semantic: Market ─────────────────────────────────────────────────────
  static const Color rising = Color(0xFF00CD3D);
  static const Color falling = Color(0xFFE60000);
  static const Color passBg = Color(0xFF2CCB6F);
  static const Color failingBg = Color(0xFFDB3445);

  static const Color shareFalling = Color(0xFFE60000);
  static const Color shareRising = Color(0xFF00CD3C);
  static const Color shareBackgroundFalling = Color(0xFFFFD6D6);
  static const Color shareBackgroundRising = Color(0xFFD6FDDD);

  static const Color chartPositive = Color(0xFF2AAA4E);
  static const Color chartNegative = Colors.red;

  // ── Semantic: Status ─────────────────────────────────────────────────────
  static const Color error = Colors.red;

  static const Color successBg = Color(0xFFE6F9ED);
  static const Color successText = Color(0xFF00A651);
  static const Color greenText = Color(0xFF00A430);
  static const Color greenDark = Color(0xFF16A34A);
  static const Color greenBg = Color(0xFFC1FFD0);

  static const Color warningBg = Color(0xFFFFF9E6);
  static const Color warningText = Color(0xFF78350F);
  static const Color amberWarning = Color(0xFFF59E0B);
  static const Color amberWarningDark = Color(0xFF92400E);
  static const Color amberBorder = Color(0xFFFDE68A);
  static const Color amberBg = Color(0xFFFFFBEB);

  static const Color shariaCompliantGreen = Color(0xFF00BC7D);
  static const Color shariaCompliantStatus = Color(0xFF00CD3D);

  // ── Background / Surface ─────────────────────────────────────────────────
  static const Color bg = Colors.white;
  static const Color greyBg = Color(0xFFEFF3F7);
  static const Color greyBg2 = Color(0xFFF9FAFB);
  static const Color containerBg = Color(0xFFF7F7F7);
  static const Color lightGreyBg = Color(0xFFDFDFDF);
  static const Color yellowBg = Color(0xFFFFB100);
  static const Color slateBackground = Color(0xFFF1F5F9);
  static const Color mintGreenBg = Color(0xFFECFDF5);
  static const Color alertCardBg = Color(0xFFF9FAFB);
  static const Color slateCardBg = Color(0xFFF8FAFC);
  static const Color lightBlueAccent = Color(0xFFD5E7FF);
  static const Color purpleColor = Color(0xFFD4D5FF);

  // ── Onboarding specific ──────────────────────────────────────────────────
  static const Color onboardingBg = Color(0xFFFEFEFE);
  static const Color goalTileBg = Color(0xFFF6F6F8);
  static const Color goalIconBg = Color(0xFFE5E7EB);
  static const Color infoNoteBg = Color(0xFFF9FAFB);
  static const Color topUpCardBg = Color(0xFF135BEC);
  static const Color wantStockBorder = Color(0xFFF3F4F6);
  static const Color stockCardBorder = Color(0xFFE6E6E6);
  static const Color stockCardShadow = Color(0x0D000000); // black 6%

  // ── Crypto ───────────────────────────────────────────────────────────────
  static const Color cryptoBgColor = Color(0xFF14142C);
  static const Color cryptoNegative = Color(0xFFF414FF);
  static const Color cryptoPositive = Color(0xFF76FBBC);
  static const Color cryptoBorderColor = Color(0xFF2E2E59);
  static const Color cryptoBtnColor = Color(0xFF1C1C37);
  static const Color textBlue = Color(0xFF479CF8);

  // ── Text ─────────────────────────────────────────────────────────────────
  static const Color primaryText = Colors.black;
  static const Color secondaryText = Color(0xFF808388);
  static const Color onPrimaryText = Colors.white;
  static const Color greyText = Color(0xFFD1D5DB);
  static const Color alertSecondaryText = Color(0xFF6A7282);

  static const Color slateTitle = Color(0xFF0F172B);
  static const Color slateBody = Color(0xFF45556C);
  static const Color slateSubtitle = Color(0xFF62748E);
  static const Color slateHeading = Color(0xFF0D141B);

  // ── Decoration / Border ──────────────────────────────────────────────────
  static const Color border = Color(0xFFCCCCCC);
  static const Color borderGreyColor = Color(0xFFF6F6F6);
  static const Color blackBorder = Colors.black;
  static const Color greyBorder = Color(0xFF424242);
  static const Color divider = Color(0xFFE6E6E6);
  static const Color boxShadow = Color(0xFFE8E8E8);
  static const Color grey = Color(0xFFE6E6E6);
  static const Color slateBorder = Color(0xFFF1F5F9);
  static const Color slateCardBorder = Color(0xFFE2E8F0);
  static const Color shadowBlack10 = Color(0x1A000000);

  // ── Bars (AppBar / BottomBar) ────────────────────────────────────────────
  static const Color barBg = Color(0xFFFFFFFF);
  static const Color barForeground = Colors.black;
  static const Color barIcon = Colors.black;
  static const Color redGrey = Color(0xFFE37985);

  // ── Dark ─────────────────────────────────────────────────────────────────
  static const Color darkBg = Colors.black;
  static const Color darkContainerBg = Colors.black38;
  static const Color darkBarBg = Colors.black38;
  static const Color darkBarForeground = Colors.white;
  static const Color darkBarIcon = Colors.white;
  static const Color darkPrimaryText = Colors.white;
  static const Color darkSecondaryText = Colors.white54;

  // ── Bank Brands ──────────────────────────────────────────────────────────
  static const Color bankHalyk = Color(0xFF088B6C);
  static const Color bankBcc = Color(0xFF00AB75);
  static const Color bankFreedom = Color(0xFF4FB84F);
  static const Color bankForte = Color(0xFF28E8FC);
  static const Color bankBereke = Color(0xFF023DFF);
  static const Color bankEurasian = Color(0xFFE2056E);
  static const Color bankAlatauCity = Color(0xFFEDB110);

  // ── Misc ─────────────────────────────────────────────────────────────────
  static const Color greyButton = Colors.grey;
  static const MaterialColor primarySwatch = Colors.deepPurple;
}

// ────────────────────────────────────────────────────────────────────────────

// Global key for showing snackbars / material banners from anywhere.
final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

// ── Inter font family ─────────────────────────────────────────────────────────
// Matches the `family` name declared in pubspec.yaml.
//
// pubspec.yaml entry (adjust asset paths to match your project structure):
//
//   flutter:
//     fonts:
//       - family: Inter
//         fonts:
//           - asset: assets/fonts/Inter-Regular.ttf
//             weight: 400
//           - asset: assets/fonts/Inter-Medium.ttf
//             weight: 500
//           - asset: assets/fonts/Inter-SemiBold.ttf
//             weight: 600
//           - asset: assets/fonts/Inter-Bold.ttf
//             weight: 700

const String _inter = 'Inter';

TextStyle _interStyle({
  required double fontSize,
  required FontWeight fontWeight,
  required Color color,
  Color? decorationColor,
}) =>
    TextStyle(
      fontFamily: _inter,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decorationColor: decorationColor ?? color,
    );

/// Returns the canonical Paidax [ThemeData].
/// Call this once — in your [MaterialApp] or [MaterialApp.router] — and nowhere else.
ThemeData buildPaidaxTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    visualDensity: VisualDensity.standard,

    // ── Colors ──────────────────────────────────────────────────────────
    primaryColor: PaidaxColors.primary,
    scaffoldBackgroundColor: PaidaxColors.bg,
    dividerColor: PaidaxColors.divider,

    colorScheme: const ColorScheme.light(
      primary: PaidaxColors.primary,
      onPrimary: PaidaxColors.onPrimaryText,
      secondary: PaidaxColors.primary2,
      onSecondary: PaidaxColors.onPrimaryText,
      tertiary: PaidaxColors.tertiary,
      surface: PaidaxColors.bg,
      onSurface: PaidaxColors.primaryText,
      error: PaidaxColors.error,
      primaryContainer: PaidaxColors.primaryContainer,
    ),

    // ── Typography ───────────────────────────────────────────────────────
    textTheme: _buildTextTheme(
      baseColor: PaidaxColors.primaryText,
      decorationColor: PaidaxColors.primaryText,
    ),

    primaryTextTheme: _buildTextTheme(
      baseColor: PaidaxColors.primary,
      decorationColor: PaidaxColors.primary,
    ),

    // ── Progress indicator ───────────────────────────────────────────────
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: PaidaxColors.primary,
    ),

    // ── AppBar ───────────────────────────────────────────────────────────
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: PaidaxColors.barBg,
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(color: PaidaxColors.barIcon),
      actionsIconTheme: const IconThemeData(color: PaidaxColors.barIcon),
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: _interStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600, // SemiBold
        color: PaidaxColors.barForeground,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),

    // ── Bottom navigation ────────────────────────────────────────────────
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 8,
      backgroundColor: PaidaxColors.bg,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: PaidaxColors.primary,
      unselectedItemColor: PaidaxColors.secondaryText,
      type: BottomNavigationBarType.fixed,
    ),

    // ── NavigationBar (Material 3) ───────────────────────────────────────
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: PaidaxColors.bg,
      indicatorColor: PaidaxColors.primaryContainer,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => _interStyle(
          fontSize: 11,
          fontWeight: states.contains(WidgetState.selected)
              ? FontWeight.w600 // SemiBold
              : FontWeight.w400, // Regular
          color: states.contains(WidgetState.selected)
              ? PaidaxColors.primary
              : PaidaxColors.secondaryText,
        ),
      ),
    ),

    // ── TabBar ───────────────────────────────────────────────────────────
    tabBarTheme: TabBarTheme(
      indicatorColor: PaidaxColors.primary,
      dividerColor: PaidaxColors.divider,
      labelColor: PaidaxColors.primaryText,
      unselectedLabelColor: PaidaxColors.secondaryText,
      labelStyle: _interStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600, // SemiBold
        color: PaidaxColors.primaryText,
      ),
      unselectedLabelStyle: _interStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500, // Medium
        color: PaidaxColors.secondaryText,
      ),
    ),

    // ── Buttons ──────────────────────────────────────────────────────────
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: PaidaxColors.primary,
        foregroundColor: PaidaxColors.onPrimaryText,
        disabledBackgroundColor: PaidaxColors.containerBg,
        disabledForegroundColor: PaidaxColors.secondaryText,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: _interStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600, // SemiBold
          color: PaidaxColors.onPrimaryText,
        ),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        textStyle: _interStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500, // Medium
          color: PaidaxColors.primaryText,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: PaidaxColors.primary,
        side: const BorderSide(color: PaidaxColors.primary, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: _interStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600, // SemiBold
          color: PaidaxColors.primary,
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: PaidaxColors.primary,
        textStyle: _interStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600, // SemiBold
          color: PaidaxColors.primary,
        ),
      ),
    ),

    // ── FAB ──────────────────────────────────────────────────────────────
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      shape: CircleBorder(),
      backgroundColor: PaidaxColors.primary,
      foregroundColor: PaidaxColors.onPrimaryText,
      elevation: 4,
      hoverElevation: 6,
    ),

    // ── Input / TextField ────────────────────────────────────────────────
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      hintStyle: _interStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400, // Regular
        color: PaidaxColors.secondaryText,
      ),
      labelStyle: _interStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400, // Regular
        color: PaidaxColors.secondaryText,
      ),
      floatingLabelStyle: _interStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500, // Medium
        color: PaidaxColors.primary,
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

    // ── Card ─────────────────────────────────────────────────────────────
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

    // ── List tile ────────────────────────────────────────────────────────
    listTileTheme: const ListTileThemeData(
      textColor: PaidaxColors.primaryText,
      iconColor: PaidaxColors.primaryText,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    ),

    // ── Chip ─────────────────────────────────────────────────────────────
    chipTheme: ChipThemeData(
      backgroundColor: PaidaxColors.greyBg,
      selectedColor: PaidaxColors.primaryContainer,
      labelStyle: _interStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500, // Medium
        color: PaidaxColors.primaryText,
      ),
      side: const BorderSide(color: PaidaxColors.divider, width: 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // ── Divider ──────────────────────────────────────────────────────────
    dividerTheme: const DividerThemeData(
      color: PaidaxColors.divider,
      thickness: 1,
      space: 1,
    ),

    // ── Switch ───────────────────────────────────────────────────────────
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

    // ── Checkbox ─────────────────────────────────────────────────────────
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

    // ── Radio ────────────────────────────────────────────────────────────
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? PaidaxColors.primary
            : PaidaxColors.secondaryText;
      }),
    ),

    // ── Snackbar ─────────────────────────────────────────────────────────
    snackBarTheme: SnackBarThemeData(
      backgroundColor: PaidaxColors.primaryText,
      contentTextStyle: _interStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400, // Regular
        color: PaidaxColors.onPrimaryText,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      behavior: SnackBarBehavior.floating,
    ),

    // ── Bottom sheet ─────────────────────────────────────────────────────
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

    // ── Dialog ───────────────────────────────────────────────────────────
    dialogTheme: DialogTheme(
      backgroundColor: PaidaxColors.bg,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titleTextStyle: _interStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700, // Bold
        color: PaidaxColors.primaryText,
      ),
      contentTextStyle: _interStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400, // Regular
        color: PaidaxColors.secondaryText,
      ),
    ),

    // ── Tooltip ──────────────────────────────────────────────────────────
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: PaidaxColors.primaryText.withOpacity(0.9),
        borderRadius: BorderRadius.circular(6),
      ),
      textStyle: _interStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400, // Regular
        color: PaidaxColors.onPrimaryText,
      ),
    ),
  );
}

// ─── Text Theme Builder ───────────────────────────────────────────────────────
TextTheme _buildTextTheme({
  required Color baseColor,
  required Color decorationColor,
}) {
  return TextTheme(
    // Display — Bold
    displayLarge: _interStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: baseColor,
        decorationColor: decorationColor),
    displayMedium: _interStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: baseColor,
        decorationColor: decorationColor),
    displaySmall: _interStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: baseColor,
        decorationColor: decorationColor),

    // Headline — Bold / SemiBold
    headlineLarge: _interStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: baseColor,
        decorationColor: decorationColor),
    headlineMedium: _interStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: baseColor,
        decorationColor: decorationColor),
    headlineSmall: _interStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: baseColor,
        decorationColor: decorationColor),

    // Title — Bold / SemiBold
    titleLarge: _interStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: baseColor,
        decorationColor: decorationColor),
    titleMedium: _interStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: baseColor,
        decorationColor: decorationColor),
    titleSmall: _interStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: baseColor,
        decorationColor: decorationColor),

    // Body — Regular
    bodyLarge: _interStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: baseColor,
        decorationColor: decorationColor),
    bodyMedium: _interStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: baseColor,
        decorationColor: decorationColor),
    bodySmall: _interStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: baseColor,
        decorationColor: decorationColor),

    // Label — SemiBold / Medium
    labelLarge: _interStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: baseColor,
        decorationColor: decorationColor),
    labelMedium: _interStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: baseColor,
        decorationColor: decorationColor),
    labelSmall: _interStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: baseColor,
        decorationColor: decorationColor),
  );
}

/// Optional: keep [PaidaxApplication] if you use a router delegate elsewhere.
/// It now delegates to [buildPaidaxTheme] instead of duplicating it.
class PaidaxApplication extends StatelessWidget {
  final RouterDelegate<Object> routerDelegate;

  const PaidaxApplication({super.key, required this.routerDelegate});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: snackbarKey,
      title: 'Paidax',
      debugShowCheckedModeBanner: false,
      theme: buildPaidaxTheme(),
      routerDelegate: routerDelegate,
    );
  }
}
