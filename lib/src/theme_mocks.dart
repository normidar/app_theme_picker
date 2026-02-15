import 'package:app_theme_picker/app_theme_picker.dart';
import 'package:flutter/material.dart';

class DarkThemeModePod extends ThemeModePod {
  @override
  Future<ThemeMode> build() async {
    return ThemeMode.dark;
  }
}

class LightThemeModePod extends ThemeModePod {
  @override
  Future<ThemeMode> build() async {
    return ThemeMode.light;
  }
}
