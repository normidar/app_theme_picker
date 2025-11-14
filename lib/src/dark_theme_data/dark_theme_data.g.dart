// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dark_theme_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DarkThemeData)
const darkThemeDataProvider = DarkThemeDataFamily._();

final class DarkThemeDataProvider
    extends $AsyncNotifierProvider<DarkThemeData, ThemeData> {
  const DarkThemeDataProvider._(
      {required DarkThemeDataFamily super.from,
      required String? super.argument})
      : super(
          retry: null,
          name: r'darkThemeDataProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$darkThemeDataHash();

  @override
  String toString() {
    return r'darkThemeDataProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DarkThemeData create() => DarkThemeData();

  @override
  bool operator ==(Object other) {
    return other is DarkThemeDataProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$darkThemeDataHash() => r'49ea6d5e543f189ff632fbf3115299b4bb1c8cc8';

final class DarkThemeDataFamily extends $Family
    with
        $ClassFamilyOverride<DarkThemeData, AsyncValue<ThemeData>, ThemeData,
            FutureOr<ThemeData>, String?> {
  const DarkThemeDataFamily._()
      : super(
          retry: null,
          name: r'darkThemeDataProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  DarkThemeDataProvider call([
    String? fontFamily,
  ]) =>
      DarkThemeDataProvider._(argument: fontFamily, from: this);

  @override
  String toString() => r'darkThemeDataProvider';
}

abstract class _$DarkThemeData extends $AsyncNotifier<ThemeData> {
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
