# Paidax — Investment Onboarding App

A Flutter application featuring a polished multi-step onboarding flow for a halal investment platform. Built with clean architecture, a centralized design system, and smooth animated UI components.

## Features

- **Multi-step onboarding flow** — experience level selection, investment goals, budget range, and personalized stock recommendations
- **Centralized theme system** — all colors, typography, and component styles defined in `PaidaxColors` and `PaidaxDecorations`
- **Animated UI** — `AnimatedContainer` transitions on selection state across all interactive tiles
- **Halal investing focus** — goal options and recommendations tailored to Sharia-compliant investing

## Project Structure

```
lib/
├── onboarding/
│   ├── onboarding_flow.dart        # PageView orchestrating all steps
│   ├── sheets/
│   │   ├── experience_sheet.dart   # Step 1: investor experience level
│   │   ├── goals_sheet.dart        # Step 2: investment goals (multi-select)
│   │   ├── budget_sheet.dart       # Step 3: starting budget range
│   │   └── recommendations_sheet.dart # Step 4: personalized stock picks
│   └── widgets/
│       ├── experience_level_tile.dart  # Animated radio tile + selector
│       ├── goal_grid_card.dart         # 2×2 multi-select goal grid
│       ├── budget_range_tile.dart      # Animated radio tile + selector
│       ├── recommended_stock_card.dart # Stock card + TopUpCard + WantStockCard
│       └── onboarding_back_button.dart # Shared back button widget
└── themes/
    ├── theme.dart       # PaidaxColors, PaidaxDecorations
    └── app.dart         # PaidaxApplication + MaterialApp theme setup
```

## Design System

All colors are defined in `PaidaxColors` — no hardcoded hex values in widget files. Key token groups:

| Group | Examples |
|---|---|
| Brand | `primary`, `primary2`, `backgroundSoftBlue` |
| Market | `shareRising`, `shareFalling`, `shareBackgroundRising` |
| Text | `primaryText`, `secondaryText`, `onPrimaryText` |
| Backgrounds | `bg`, `greyBg`, `goalTileBg`, `onboardingBg` |
| Onboarding | `topUpCardBg`, `wantStockBorder`, `infoNoteBg` |

Component-level decorations (cards, borders, shadows) live in `PaidaxDecorations`.

## Getting Started

### Prerequisites

- Flutter SDK `>=3.0.0`
- Dart SDK `>=3.0.0`

### Run

```bash
flutter pub get
flutter run
```

### Build

```bash
# iOS
flutter build ios

# Android
flutter build apk
```

## Assets

Place the following images in `assets/images/`:

| File | Used in |
|---|---|
| `apple_image.png` | RecommendationsSheet stock card header |
| `icon_card.png` | TopUpCard |
| `icon_star.png` | WantStockCard |
| `icon_star_black.png` | Halal goal tile |
| `icon_arrow_black.png` | Income goal tile |
| `icon_shield.png` | Safety goal tile |
| `icon_grid.png` | Diversity goal tile |
| `icon_plant.png` | Beginner experience tile |
| `icon_arrow.png` | Intermediate experience tile |
| `icon_stats.png` | Expert experience tile |

## Contributing

1. Keep all colors in `PaidaxColors` — never use raw `Color(0xff...)` in widget files
2. Extract reusable widgets to `onboarding/widgets/`
3. Use `AnimatedContainer` for selection state transitions
