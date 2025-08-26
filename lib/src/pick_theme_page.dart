import 'package:app_theme_picker/src/theme_color_button.dart';
import 'package:app_theme_picker/src/theme_mode_button.dart';
import 'package:app_theme_picker/src/theme_pod/theme_pod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_helper/riverpod_helper.dart';

// pick_theme_page

class PickThemePage extends ConsumerWidget {
  const PickThemePage({
    required this.size,
    this.availableSchemes,
    super.key,
  });

  final Set<String>? availableSchemes;

  final double size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themePodProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.withAlpha(100),
        title: switch (theme) {
          AsyncData(:final value) => Text(
              '${value.name} ${'theme'.tr()}',
            ),
          AsyncLoading() => const Text('loading...'),
          AsyncError(:final error, :final stackTrace) => RiverpodErrorView(
              widgetName: '$PickThemePage',
              error: error,
              stackTrace: stackTrace,
            ),
          _ => const SizedBox.shrink(),
        },
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: switch (theme) {
                AsyncData(:final value) => Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 5,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ThemeModeButton(mode: ThemeMode.light),
                            ThemeModeButton(mode: ThemeMode.system),
                            ThemeModeButton(mode: ThemeMode.dark),
                          ],
                        ),
                      ),
                      ...FlexColor.schemes.entries.where((m) {
                        final avaSchs = availableSchemes;
                        if (avaSchs == null) {
                          return true;
                        }
                        return avaSchs.contains(m.key.name);
                      }).map(
                        (data) => ThemeColorButton(
                          schemeData: data.value,
                          onTap: () {
                            ref
                                .read(themePodProvider.notifier)
                                .changeTheme(data.key);
                          },
                          size: size,
                          selected: value == data.key,
                        ),
                      ),
                    ],
                  ),
                AsyncLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                AsyncError(:final error, :final stackTrace) =>
                  RiverpodErrorView(
                    widgetName: '$PickThemePage',
                    error: error,
                    stackTrace: stackTrace,
                  ),
                _ => const SizedBox.shrink(),
              },
            ),
          ),
        ),
      ),
    );
  }
}
