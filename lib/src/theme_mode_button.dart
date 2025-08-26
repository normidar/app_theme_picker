import 'package:app_theme_picker/app_theme_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeModeButton extends ConsumerWidget {
  final ThemeMode mode;

  const ThemeModeButton({required this.mode, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final icon = switch (mode) {
      ThemeMode.light => Icons.wb_sunny_outlined,
      ThemeMode.dark => Icons.nights_stay_outlined,
      ThemeMode.system => Icons.settings_suggest_outlined,
    };
    final selectedIcon = switch (mode) {
      ThemeMode.light => Icons.wb_sunny,
      ThemeMode.dark => Icons.nights_stay,
      ThemeMode.system => Icons.settings_suggest,
    };
    return IconButton(
      onPressed: () async {
        await ref.read(themeModePodProvider.notifier).changeThemeMode(mode);
      },
      icon: Icon(icon),
      isSelected: switch (ref.watch(themeModePodProvider)) {
        AsyncData(:final value) => value == mode,
        _ => false,
      },
      selectedIcon: Icon(selectedIcon),
    );
  }
}
