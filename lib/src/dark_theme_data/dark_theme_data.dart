import 'package:app_theme_picker/app_theme_picker.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dark_theme_data.g.dart';

@riverpod
class DarkThemeData extends _$DarkThemeData {
  @override
  Future<ThemeData> build([String? fontFamily]) async {
    final theme = await ref.watch(themePodProvider.future);
    return FlexThemeData.dark(
      scheme: theme,
      fontFamily: fontFamily,
    );
  }
}
