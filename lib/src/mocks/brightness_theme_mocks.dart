import 'package:app_theme_picker/app_theme_picker.dart';
import 'package:flutter/material.dart';

class DarkThemeModeMock extends ThemeModePod {
  @override
  Future<ThemeMode> build() async {
    return ThemeMode.dark;
  }
}

class LightThemeModeMock extends ThemeModePod {
  @override
  Future<ThemeMode> build() async {
    return ThemeMode.light;
  }
}
