import 'package:app_lang_selector/app_lang_selector.dart';
import 'package:app_theme_picker/app_theme_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemePickTile extends ConsumerWidget {
  const ThemePickTile({this.availableSchemes, this.size = 70, super.key});

  /// If not null, only the schemes in the set are available.
  final Set<String>? availableSchemes;

  final double size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ = ref.watch(selectingLangProvider);
    return ListTile(
      leading: const Icon(Icons.palette),
      title: const Text('tile_title').tr(),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => PickThemePage(
              availableSchemes: availableSchemes,
              size: size,
            ),
          ),
        );
      },
    );
  }
}
