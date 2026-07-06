# Paidax — Tech Task

Flutter demo app for a smart-investing onboarding and portfolio experience. Built as a technical task submission.

## Features

- **Onboarding flow** — 4-step bottom sheet: experience, goals, budget, and stock recommendations
- **Per-step loading** — shimmer placeholders while mock API responses load
- **Strategy screens** — portfolio overview, confirmation, and success states
- **Documents UI** — document update banner, expiry dialog, and success states

## Tech stack

- Flutter 3.24+ / Dart 3.5+
- `flutter_bloc` for state management
- `freezed` + `json_serializable` for models
- `shimmer`, `flutter_svg`, `cached_network_image`, `video_player`

## Project structure

```
lib/
├── core/network/          # ApiResponse wrapper (Freezed)
├── onboarding/            # Onboarding flow, BLoC, sheets, shimmers
├── strategy/              # Portfolio & strategy screens
├── documents/             # Document-related UI widgets
└── themes/                # App theme and colors
```

## Getting started

```bash
# Install dependencies
flutter pub get

# Run code generation (if models change)
dart run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

## App navigation (dev shortcuts)

From the home screen:

- **Get Started** — opens the onboarding bottom sheet
- **Secure** pill — strategy screen
- **AI-powered** pill — strategy confirmation
- **Real-time data** pill — portfolio composition mock
- Logo tap — document widgets preview
- **Sign in** — document updated screen

## Branch

Active development: `sultan`
