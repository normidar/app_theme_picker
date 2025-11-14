// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light_theme_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LightThemeData)
const lightThemeDataProvider = LightThemeDataFamily._();

final class LightThemeDataProvider
    extends $AsyncNotifierProvider<LightThemeData, ThemeData> {
  const LightThemeDataProvider._(
      {required LightThemeDataFamily super.from,
      required String? super.argument})
      : super(
          retry: null,
          name: r'lightThemeDataProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$lightThemeDataHash();

  @override
  String toString() {
    return r'lightThemeDataProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  LightThemeData create() => LightThemeData();

  @override
  bool operator ==(Object other) {
    return other is LightThemeDataProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$lightThemeDataHash() => r'771e7f342be8a9f50121dc138c7865313e1f45a8';

final class LightThemeDataFamily extends $Family
    with
        $ClassFamilyOverride<LightThemeData, AsyncValue<ThemeData>, ThemeData,
            FutureOr<ThemeData>, String?> {
  const LightThemeDataFamily._()
      : super(
          retry: null,
          name: r'lightThemeDataProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  LightThemeDataProvider call([
    String? fontFamily,
  ]) =>
      LightThemeDataProvider._(argument: fontFamily, from: this);

  @override
  String toString() => r'lightThemeDataProvider';
}

abstract class _$LightThemeData extends $AsyncNotifier<ThemeData> {
  late final _$args = ref.$arg as String?;
  String? get fontFamily => _$args;

  FutureOr<ThemeData> build([
    String? fontFamily,
  ]);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args,
    );
    final ref = this.ref as $Ref<AsyncValue<ThemeData>, ThemeData>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<ThemeData>, ThemeData>,
        AsyncValue<ThemeData>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
