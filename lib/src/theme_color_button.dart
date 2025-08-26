import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeColorButton extends StatelessWidget {
  const ThemeColorButton({
    required this.schemeData,
    required this.onTap,
    required this.selected,
    this.size = 50.0,
    super.key,
  });

  final FlexSchemeData schemeData;

  final void Function() onTap;

  final bool selected;

  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLight = theme.brightness == Brightness.light;
    return Tooltip(
      message: schemeData.name,
      waitDuration: const Duration(milliseconds: 700),
      child: IntrinsicWidth(
        child: FlexThemeModeOptionButton(
          semanticLabel: 'Set to color scheme '
              '${schemeData.name}',
          setFocusOnTap: true,
          // The buttons are colorful and need custom light/dark mode
          // focus and hover colors that don't depend theme to be visible.
          hoverColor: isLight
              ? Colors.white.withAlpha(0x3F)
              : Colors.black.withAlpha(0x2F),
          focusColor: isLight
              ? Colors.white.withAlpha(0x5F)
              : Colors.black.withAlpha(0x4F),
          optionButtonPadding: const EdgeInsetsDirectional.only(bottom: 6),
          optionButtonBorderRadius: 13,
          height: size / 2.25,
          width: size / 2.25,
          padding: const EdgeInsets.all(0.3),
          optionButtonMargin: EdgeInsets.zero,
          borderRadius: 0,
          unselectedBorder: BorderSide.none,
          selectedBorder: BorderSide(color: theme.primaryColorLight, width: 4),
          onSelect: onTap,
          selected: selected,
          backgroundColor: theme.colorScheme.surface,
          flexSchemeColor: isLight ? schemeData.light : schemeData.dark,
        ),
      ),
    );
  }
}
