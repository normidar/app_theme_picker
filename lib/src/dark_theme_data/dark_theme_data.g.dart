// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dark_theme_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$darkThemeDataHash() => r'49ea6d5e543f189ff632fbf3115299b4bb1c8cc8';

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

abstract class _$DarkThemeData
    extends BuildlessAutoDisposeAsyncNotifier<ThemeData> {
  late final String? fontFamily;

  FutureOr<ThemeData> build([
    String? fontFamily,
  ]);
}

/// See also [DarkThemeData].
@ProviderFor(DarkThemeData)
const darkThemeDataProvider = DarkThemeDataFamily();

/// See also [DarkThemeData].
class DarkThemeDataFamily extends Family<AsyncValue<ThemeData>> {
  /// See also [DarkThemeData].
  const DarkThemeDataFamily();

  /// See also [DarkThemeData].
  DarkThemeDataProvider call([
    String? fontFamily,
  ]) {
    return DarkThemeDataProvider(
      fontFamily,
    );
  }

  @override
  DarkThemeDataProvider getProviderOverride(
    covariant DarkThemeDataProvider provider,
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
  String? get name => r'darkThemeDataProvider';
}

/// See also [DarkThemeData].
class DarkThemeDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DarkThemeData, ThemeData> {
  /// See also [DarkThemeData].
  DarkThemeDataProvider([
    String? fontFamily,
  ]) : this._internal(
          () => DarkThemeData()..fontFamily = fontFamily,
          from: darkThemeDataProvider,
          name: r'darkThemeDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$darkThemeDataHash,
          dependencies: DarkThemeDataFamily._dependencies,
          allTransitiveDependencies:
              DarkThemeDataFamily._allTransitiveDependencies,
          fontFamily: fontFamily,
        );

  DarkThemeDataProvider._internal(
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
    covariant DarkThemeData notifier,
  ) {
    return notifier.build(
      fontFamily,
    );
  }

  @override
  Override overrideWith(DarkThemeData Function() create) {
    return ProviderOverride(
      origin: this,
      override: DarkThemeDataProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<DarkThemeData, ThemeData>
      createElement() {
    return _DarkThemeDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DarkThemeDataProvider && other.fontFamily == fontFamily;
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
mixin DarkThemeDataRef on AutoDisposeAsyncNotifierProviderRef<ThemeData> {
  /// The parameter `fontFamily` of this provider.
  String? get fontFamily;
}

class _DarkThemeDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DarkThemeData, ThemeData>
    with DarkThemeDataRef {
  _DarkThemeDataProviderElement(super.provider);

  @override
  String? get fontFamily => (origin as DarkThemeDataProvider).fontFamily;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
