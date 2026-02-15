// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_mode_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ThemeModePod)
const themeModePodProvider = ThemeModePodProvider._();

final class ThemeModePodProvider
    extends $AsyncNotifierProvider<ThemeModePod, ThemeMode> {
  const ThemeModePodProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'themeModePodProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$themeModePodHash();

  @$internal
  @override
  ThemeModePod create() => ThemeModePod();
}

String _$themeModePodHash() => r'3a893b73ccb25b9d2cc7861103245335acc3caaa';

abstract class _$ThemeModePod extends $AsyncNotifier<ThemeMode> {
  FutureOr<ThemeMode> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ThemeMode>, ThemeMode>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<ThemeMode>, ThemeMode>,
        AsyncValue<ThemeMode>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
