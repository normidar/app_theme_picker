// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light_theme_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lightThemeDataHash() => r'771e7f342be8a9f50121dc138c7865313e1f45a8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$LightThemeData
    extends BuildlessAutoDisposeAsyncNotifier<ThemeData> {
  late final String? fontFamily;

  FutureOr<ThemeData> build([
    String? fontFamily,
  ]);
}

/// See also [LightThemeData].
@ProviderFor(LightThemeData)
const lightThemeDataProvider = LightThemeDataFamily();

/// See also [LightThemeData].
class LightThemeDataFamily extends Family<AsyncValue<ThemeData>> {
  /// See also [LightThemeData].
  const LightThemeDataFamily();

  /// See also [LightThemeData].
  LightThemeDataProvider call([
    String? fontFamily,
  ]) {
    return LightThemeDataProvider(
      fontFamily,
    );
  }

  @override
  LightThemeDataProvider getProviderOverride(
    covariant LightThemeDataProvider provider,
  ) {
    return call(
      provider.fontFamily,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'lightThemeDataProvider';
}

/// See also [LightThemeData].
class LightThemeDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LightThemeData, ThemeData> {
  /// See also [LightThemeData].
  LightThemeDataProvider([
    String? fontFamily,
  ]) : this._internal(
          () => LightThemeData()..fontFamily = fontFamily,
          from: lightThemeDataProvider,
          name: r'lightThemeDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lightThemeDataHash,
          dependencies: LightThemeDataFamily._dependencies,
          allTransitiveDependencies:
              LightThemeDataFamily._allTransitiveDependencies,
          fontFamily: fontFamily,
        );

  LightThemeDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fontFamily,
  }) : super.internal();

  final String? fontFamily;

  @override
  FutureOr<ThemeData> runNotifierBuild(
    covariant LightThemeData notifier,
  ) {
    return notifier.build(
      fontFamily,
    );
  }

  @override
  Override overrideWith(LightThemeData Function() create) {
    return ProviderOverride(
      origin: this,
      override: LightThemeDataProvider._internal(
        () => create()..fontFamily = fontFamily,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fontFamily: fontFamily,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<LightThemeData, ThemeData>
      createElement() {
    return _LightThemeDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LightThemeDataProvider && other.fontFamily == fontFamily;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fontFamily.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LightThemeDataRef on AutoDisposeAsyncNotifierProviderRef<ThemeData> {
  /// The parameter `fontFamily` of this provider.
  String? get fontFamily;
}

class _LightThemeDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LightThemeData, ThemeData>
    with LightThemeDataRef {
  _LightThemeDataProviderElement(super.provider);

  @override
  String? get fontFamily => (origin as LightThemeDataProvider).fontFamily;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
