# App Theme Picker

[![GitHub](https://img.shields.io/github/license/normidar/app_theme_picker.svg)](https://github.com/normidar/app_theme_picker/blob/main/LICENSE)
[![pub package](https://img.shields.io/pub/v/app_theme_picker.svg)](https://pub.dartlang.org/packages/app_theme_picker)
[![GitHub Stars](https://img.shields.io/github/stars/normidar/app_theme_picker.svg)](https://github.com/normidar/app_theme_picker/stargazers)
[![Twitter](https://img.shields.io/twitter/url/https/twitter.com/normidar.svg?style=social&label=Follow%20%40normidar)](https://twitter.com/normidar)
[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/normidar)

A beautiful and customizable Flutter package for theme selection with support for multiple color schemes and theme modes (light, dark, system). Built with Flutter Riverpod for state management and FlexColorScheme for beautiful color schemes.

## Features

✨ **Beautiful Theme Selection UI**: Elegant interface for picking color schemes  
🎨 **Multiple Color Schemes**: Support for all FlexColorScheme color schemes  
🌙 **Theme Mode Support**: Light, Dark, and System theme modes  
💾 **Persistent Settings**: Theme preferences are saved automatically  
🌍 **Internationalization**: Built-in localization support (English, Japanese, Korean, Chinese)  
⚡ **State Management**: Powered by Flutter Riverpod for reactive state management  
🎯 **Customizable**: Configurable button sizes and available color schemes

## Screenshots

The theme picker provides an intuitive interface with:

- Theme mode buttons (Light/Dark/System) at the top
- Grid of colorful theme buttons showing available color schemes
- Real-time preview of selected themes
- Persistent theme selection across app restarts

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  app_theme_picker: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Dependencies

This package requires the following dependencies (automatically installed):

- `flutter_riverpod: ^2.6.1` - State management
- `flex_color_scheme: ^8.2.0` - Beautiful color schemes
- `easy_localization: ^3.0.7` - Internationalization
- `riverpod_helper: ^0.0.3` - Riverpod utilities

## Quick Start

### 1. Basic Setup

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_theme_picker/app_theme_picker.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeAsync = ref.watch(themePodProvider);
    final themeModeAsync = ref.watch(themeModePodProvider);

    return MaterialApp(
      title: 'Theme Picker Demo',
      theme: themeAsync.when(
        data: (flexScheme) => FlexThemeData.light(scheme: flexScheme),
        loading: () => FlexThemeData.light(scheme: FlexScheme.sakura),
        error: (_, __) => FlexThemeData.light(scheme: FlexScheme.sakura),
      ),
      darkTheme: themeAsync.when(
        data: (flexScheme) => FlexThemeData.dark(scheme: flexScheme),
        loading: () => FlexThemeData.dark(scheme: FlexScheme.sakura),
        error: (_, __) => FlexThemeData.dark(scheme: FlexScheme.sakura),
      ),
      themeMode: themeModeAsync.when(
        data: (mode) => mode,
        loading: () => ThemeMode.light,
        error: (_, __) => ThemeMode.light,
      ),
      home: HomeScreen(),
    );
  }
}
```

### 2. Add Theme Picker Page

```dart
import 'package:app_theme_picker/app_theme_picker.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PickThemePage(
                  size: 60.0, // Button size
                ),
              ),
            );
          },
          child: Text('Choose Theme'),
        ),
      ),
    );
  }
}
```

### 3. Using Theme Picker Tile

For a more compact interface, use the `ThemePickTile`:

```dart
import 'package:app_theme_picker/app_theme_picker.dart';

ListTile(
  title: Text('Theme'),
  subtitle: ThemePickTile(
    size: 40.0,
    availableSchemes: {'sakura', 'material', 'blue'}, // Optional: limit schemes
  ),
)
```

## Advanced Usage

### Custom Available Schemes

You can limit which color schemes are available:

```dart
PickThemePage(
  size: 60.0,
  availableSchemes: {
    'material',
    'materialHc',
    'blue',
    'indigo',
    'sakura',
    'mandyRed',
  },
)
```

### Individual Theme Components

Use individual components for custom layouts:

```dart
// Theme mode buttons
Row(
  children: [
    ThemeModeButton(mode: ThemeMode.light),
    ThemeModeButton(mode: ThemeMode.system),
    ThemeModeButton(mode: ThemeMode.dark),
  ],
)

// Individual color button
ThemeColorButton(
  schemeData: FlexColor.schemes[FlexScheme.sakura]!,
  onTap: () {
    ref.read(themePodProvider.notifier).changeTheme(FlexScheme.sakura);
  },
  size: 50.0,
  selected: currentScheme == FlexScheme.sakura,
)
```

### Accessing Theme State

```dart
class MyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch current theme
    final currentTheme = ref.watch(themePodProvider);
    final currentThemeMode = ref.watch(themeModePodProvider);

    // Programmatically change theme
    void changeToSakura() {
      ref.read(themePodProvider.notifier).changeTheme(FlexScheme.sakura);
    }

    void changeToDarkMode() {
      ref.read(themeModePodProvider.notifier).changeThemeMode(ThemeMode.dark);
    }

    return YourWidget();
  }
}
```

## Localization

The package supports multiple languages out of the box:

- English (en-US)
- Japanese (ja-JP)
- Korean (ko)
- Chinese (zh-CN)

To enable localization in your app, set up `easy_localization`:

```dart
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ja', 'JP'),
        Locale('ko'),
        Locale('zh', 'CN'),
      ],
      path: 'assets/localizations',
      fallbackLocale: Locale('en', 'US'),
      child: ProviderScope(child: MyApp()),
    ),
  );
}
```

## API Reference

### PickThemePage

Main theme selection page widget.

| Parameter          | Type           | Description                   | Default              |
| ------------------ | -------------- | ----------------------------- | -------------------- |
| `size`             | `double`       | Size of theme color buttons   | Required             |
| `availableSchemes` | `Set<String>?` | Limit available color schemes | `null` (all schemes) |

### ThemePickTile

Compact theme selection tile widget.

| Parameter          | Type           | Description                   | Default              |
| ------------------ | -------------- | ----------------------------- | -------------------- |
| `size`             | `double`       | Size of theme color buttons   | `40.0`               |
| `availableSchemes` | `Set<String>?` | Limit available color schemes | `null` (all schemes) |

### ThemeColorButton

Individual color scheme button.

| Parameter    | Type             | Description                | Default  |
| ------------ | ---------------- | -------------------------- | -------- |
| `schemeData` | `FlexSchemeData` | Color scheme data          | Required |
| `onTap`      | `VoidCallback`   | Tap callback               | Required |
| `selected`   | `bool`           | Whether button is selected | Required |
| `size`       | `double`         | Button size                | `50.0`   |

### ThemeModeButton

Individual theme mode button (Light/Dark/System).

| Parameter | Type        | Description | Default  |
| --------- | ----------- | ----------- | -------- |
| `mode`    | `ThemeMode` | Theme mode  | Required |

### State Providers

- `themePodProvider`: Current color scheme (`AsyncValue<FlexScheme>`)
- `themeModePodProvider`: Current theme mode (`AsyncValue<ThemeMode>`)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**Normidar**

- GitHub: [@normidar](https://github.com/normidar)
- Twitter: [@normidar](https://twitter.com/normidar)

## Support

If you find this package helpful, please consider:

- ⭐ Starring the repository
- 🐛 Reporting bugs
- 💡 Suggesting new features
- ☕ [Sponsoring the developer](https://github.com/sponsors/normidar)

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a detailed list of changes.
