// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ThemePod)
const themePodProvider = ThemePodProvider._();

final class ThemePodProvider
    extends $AsyncNotifierProvider<ThemePod, FlexScheme> {
  const ThemePodProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'themePodProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$themePodHash();

  @$internal
  @override
  ThemePod create() => ThemePod();
}

String _$themePodHash() => r'6ce850ae6bd98c0aa28eccddd68226ee3c6af710';

abstract class _$ThemePod extends $AsyncNotifier<FlexScheme> {
  FutureOr<FlexScheme> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<FlexScheme>, FlexScheme>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<FlexScheme>, FlexScheme>,
        AsyncValue<FlexScheme>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
