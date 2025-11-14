import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_helper/riverpod_helper.dart';

part 'theme_mode_pod.g.dart';

@Riverpod(keepAlive: true)
class ThemeModePod extends _$ThemeModePod {
  final _key = 'app_theme_picker:theme_mode';

  @override
  Future<ThemeMode> build() async {
    final themeMode = await ref.read(prefsAliveStringPodProvider(_key).future);
    if (themeMode != null) {
      return ThemeMode.values.firstWhere(
        (element) => element.name == themeMode,
      );
    }
    return ThemeMode.light;
  }

  Future<void> changeThemeMode(ThemeMode themeMode) async {
    await ref
        .read(prefsAliveStringPodProvider(_key).notifier)
        .setValue(themeMode.name);
    state = AsyncData(themeMode);
  }
}
