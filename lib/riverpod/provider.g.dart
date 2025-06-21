// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$retAdminProdHash() => r'e2b256edd4eed5b934d884fc24992a71073f159c';

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

/// See also [retAdminProd].
@ProviderFor(retAdminProd)
const retAdminProdProvider = RetAdminProdFamily();

/// See also [retAdminProd].
class RetAdminProdFamily extends Family<AsyncValue<ProductAdminData>> {
  /// See also [retAdminProd].
  const RetAdminProdFamily();

  /// See also [retAdminProd].
  RetAdminProdProvider call(
    String endPoint,
    String userModifier,
    String functionKey,
  ) {
    return RetAdminProdProvider(
      endPoint,
      userModifier,
      functionKey,
    );
  }

  @override
  RetAdminProdProvider getProviderOverride(
    covariant RetAdminProdProvider provider,
  ) {
    return call(
      provider.endPoint,
      provider.userModifier,
      provider.functionKey,
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
  String? get name => r'retAdminProdProvider';
}

/// See also [retAdminProd].
class RetAdminProdProvider extends AutoDisposeFutureProvider<ProductAdminData> {
  /// See also [retAdminProd].
  RetAdminProdProvider(
    String endPoint,
    String userModifier,
    String functionKey,
  ) : this._internal(
          (ref) => retAdminProd(
            ref as RetAdminProdRef,
            endPoint,
            userModifier,
            functionKey,
          ),
          from: retAdminProdProvider,
          name: r'retAdminProdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$retAdminProdHash,
          dependencies: RetAdminProdFamily._dependencies,
          allTransitiveDependencies:
              RetAdminProdFamily._allTransitiveDependencies,
          endPoint: endPoint,
          userModifier: userModifier,
          functionKey: functionKey,
        );

  RetAdminProdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.endPoint,
    required this.userModifier,
    required this.functionKey,
  }) : super.internal();

  final String endPoint;
  final String userModifier;
  final String functionKey;

  @override
  Override overrideWith(
    FutureOr<ProductAdminData> Function(RetAdminProdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RetAdminProdProvider._internal(
        (ref) => create(ref as RetAdminProdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        endPoint: endPoint,
        userModifier: userModifier,
        functionKey: functionKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductAdminData> createElement() {
    return _RetAdminProdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RetAdminProdProvider &&
        other.endPoint == endPoint &&
        other.userModifier == userModifier &&
        other.functionKey == functionKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, endPoint.hashCode);
    hash = _SystemHash.combine(hash, userModifier.hashCode);
    hash = _SystemHash.combine(hash, functionKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RetAdminProdRef on AutoDisposeFutureProviderRef<ProductAdminData> {
  /// The parameter `endPoint` of this provider.
  String get endPoint;

  /// The parameter `userModifier` of this provider.
  String get userModifier;

  /// The parameter `functionKey` of this provider.
  String get functionKey;
}

class _RetAdminProdProviderElement
    extends AutoDisposeFutureProviderElement<ProductAdminData>
    with RetAdminProdRef {
  _RetAdminProdProviderElement(super.provider);

  @override
  String get endPoint => (origin as RetAdminProdProvider).endPoint;
  @override
  String get userModifier => (origin as RetAdminProdProvider).userModifier;
  @override
  String get functionKey => (origin as RetAdminProdProvider).functionKey;
}

String _$retClientDashbProdHash() =>
    r'abcf115dbb9d8b3a03da77077f87e1651eebbbe6';

/// See also [retClientDashbProd].
@ProviderFor(retClientDashbProd)
const retClientDashbProdProvider = RetClientDashbProdFamily();

/// See also [retClientDashbProd].
class RetClientDashbProdFamily
    extends Family<AsyncValue<ProductClientDashboardData>> {
  /// See also [retClientDashbProd].
  const RetClientDashbProdFamily();

  /// See also [retClientDashbProd].
  RetClientDashbProdProvider call(
    String endPoint,
    String prodCatName,
    String functionKey,
  ) {
    return RetClientDashbProdProvider(
      endPoint,
      prodCatName,
      functionKey,
    );
  }

  @override
  RetClientDashbProdProvider getProviderOverride(
    covariant RetClientDashbProdProvider provider,
  ) {
    return call(
      provider.endPoint,
      provider.prodCatName,
      provider.functionKey,
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
  String? get name => r'retClientDashbProdProvider';
}

/// See also [retClientDashbProd].
class RetClientDashbProdProvider
    extends AutoDisposeFutureProvider<ProductClientDashboardData> {
  /// See also [retClientDashbProd].
  RetClientDashbProdProvider(
    String endPoint,
    String prodCatName,
    String functionKey,
  ) : this._internal(
          (ref) => retClientDashbProd(
            ref as RetClientDashbProdRef,
            endPoint,
            prodCatName,
            functionKey,
          ),
          from: retClientDashbProdProvider,
          name: r'retClientDashbProdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$retClientDashbProdHash,
          dependencies: RetClientDashbProdFamily._dependencies,
          allTransitiveDependencies:
              RetClientDashbProdFamily._allTransitiveDependencies,
          endPoint: endPoint,
          prodCatName: prodCatName,
          functionKey: functionKey,
        );

  RetClientDashbProdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.endPoint,
    required this.prodCatName,
    required this.functionKey,
  }) : super.internal();

  final String endPoint;
  final String prodCatName;
  final String functionKey;

  @override
  Override overrideWith(
    FutureOr<ProductClientDashboardData> Function(
            RetClientDashbProdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RetClientDashbProdProvider._internal(
        (ref) => create(ref as RetClientDashbProdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        endPoint: endPoint,
        prodCatName: prodCatName,
        functionKey: functionKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductClientDashboardData> createElement() {
    return _RetClientDashbProdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RetClientDashbProdProvider &&
        other.endPoint == endPoint &&
        other.prodCatName == prodCatName &&
        other.functionKey == functionKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, endPoint.hashCode);
    hash = _SystemHash.combine(hash, prodCatName.hashCode);
    hash = _SystemHash.combine(hash, functionKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RetClientDashbProdRef
    on AutoDisposeFutureProviderRef<ProductClientDashboardData> {
  /// The parameter `endPoint` of this provider.
  String get endPoint;

  /// The parameter `prodCatName` of this provider.
  String get prodCatName;

  /// The parameter `functionKey` of this provider.
  String get functionKey;
}

class _RetClientDashbProdProviderElement
    extends AutoDisposeFutureProviderElement<ProductClientDashboardData>
    with RetClientDashbProdRef {
  _RetClientDashbProdProviderElement(super.provider);

  @override
  String get endPoint => (origin as RetClientDashbProdProvider).endPoint;
  @override
  String get prodCatName => (origin as RetClientDashbProdProvider).prodCatName;
  @override
  String get functionKey => (origin as RetClientDashbProdProvider).functionKey;
}

String _$retClientProdPreviewHash() =>
    r'184682bdc0c757247d952d53a364022853cc98d9';

/// See also [retClientProdPreview].
@ProviderFor(retClientProdPreview)
const retClientProdPreviewProvider = RetClientProdPreviewFamily();

/// See also [retClientProdPreview].
class RetClientProdPreviewFamily
    extends Family<AsyncValue<ProductClientPreviewData>> {
  /// See also [retClientProdPreview].
  const RetClientProdPreviewFamily();

  /// See also [retClientProdPreview].
  RetClientProdPreviewProvider call(
    String endPoint,
    String prodId,
    String functionKey,
  ) {
    return RetClientProdPreviewProvider(
      endPoint,
      prodId,
      functionKey,
    );
  }

  @override
  RetClientProdPreviewProvider getProviderOverride(
    covariant RetClientProdPreviewProvider provider,
  ) {
    return call(
      provider.endPoint,
      provider.prodId,
      provider.functionKey,
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
  String? get name => r'retClientProdPreviewProvider';
}

/// See also [retClientProdPreview].
class RetClientProdPreviewProvider
    extends AutoDisposeFutureProvider<ProductClientPreviewData> {
  /// See also [retClientProdPreview].
  RetClientProdPreviewProvider(
    String endPoint,
    String prodId,
    String functionKey,
  ) : this._internal(
          (ref) => retClientProdPreview(
            ref as RetClientProdPreviewRef,
            endPoint,
            prodId,
            functionKey,
          ),
          from: retClientProdPreviewProvider,
          name: r'retClientProdPreviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$retClientProdPreviewHash,
          dependencies: RetClientProdPreviewFamily._dependencies,
          allTransitiveDependencies:
              RetClientProdPreviewFamily._allTransitiveDependencies,
          endPoint: endPoint,
          prodId: prodId,
          functionKey: functionKey,
        );

  RetClientProdPreviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.endPoint,
    required this.prodId,
    required this.functionKey,
  }) : super.internal();

  final String endPoint;
  final String prodId;
  final String functionKey;

  @override
  Override overrideWith(
    FutureOr<ProductClientPreviewData> Function(
            RetClientProdPreviewRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RetClientProdPreviewProvider._internal(
        (ref) => create(ref as RetClientProdPreviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        endPoint: endPoint,
        prodId: prodId,
        functionKey: functionKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductClientPreviewData> createElement() {
    return _RetClientProdPreviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RetClientProdPreviewProvider &&
        other.endPoint == endPoint &&
        other.prodId == prodId &&
        other.functionKey == functionKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, endPoint.hashCode);
    hash = _SystemHash.combine(hash, prodId.hashCode);
    hash = _SystemHash.combine(hash, functionKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RetClientProdPreviewRef
    on AutoDisposeFutureProviderRef<ProductClientPreviewData> {
  /// The parameter `endPoint` of this provider.
  String get endPoint;

  /// The parameter `prodId` of this provider.
  String get prodId;

  /// The parameter `functionKey` of this provider.
  String get functionKey;
}

class _RetClientProdPreviewProviderElement
    extends AutoDisposeFutureProviderElement<ProductClientPreviewData>
    with RetClientProdPreviewRef {
  _RetClientProdPreviewProviderElement(super.provider);

  @override
  String get endPoint => (origin as RetClientProdPreviewProvider).endPoint;
  @override
  String get prodId => (origin as RetClientProdPreviewProvider).prodId;
  @override
  String get functionKey =>
      (origin as RetClientProdPreviewProvider).functionKey;
}

String _$retrieveProductKeyHash() =>
    r'ddb998c47db2591deee92b4776f7f06b0fcbd59d';

/// See also [retrieveProductKey].
@ProviderFor(retrieveProductKey)
const retrieveProductKeyProvider = RetrieveProductKeyFamily();

/// See also [retrieveProductKey].
class RetrieveProductKeyFamily extends Family<AsyncValue<ProductKeyNames>> {
  /// See also [retrieveProductKey].
  const RetrieveProductKeyFamily();

  /// See also [retrieveProductKey].
  RetrieveProductKeyProvider call(
    String endPoint,
    String functionKey,
  ) {
    return RetrieveProductKeyProvider(
      endPoint,
      functionKey,
    );
  }

  @override
  RetrieveProductKeyProvider getProviderOverride(
    covariant RetrieveProductKeyProvider provider,
  ) {
    return call(
      provider.endPoint,
      provider.functionKey,
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
  String? get name => r'retrieveProductKeyProvider';
}

/// See also [retrieveProductKey].
class RetrieveProductKeyProvider
    extends AutoDisposeFutureProvider<ProductKeyNames> {
  /// See also [retrieveProductKey].
  RetrieveProductKeyProvider(
    String endPoint,
    String functionKey,
  ) : this._internal(
          (ref) => retrieveProductKey(
            ref as RetrieveProductKeyRef,
            endPoint,
            functionKey,
          ),
          from: retrieveProductKeyProvider,
          name: r'retrieveProductKeyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$retrieveProductKeyHash,
          dependencies: RetrieveProductKeyFamily._dependencies,
          allTransitiveDependencies:
              RetrieveProductKeyFamily._allTransitiveDependencies,
          endPoint: endPoint,
          functionKey: functionKey,
        );

  RetrieveProductKeyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.endPoint,
    required this.functionKey,
  }) : super.internal();

  final String endPoint;
  final String functionKey;

  @override
  Override overrideWith(
    FutureOr<ProductKeyNames> Function(RetrieveProductKeyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RetrieveProductKeyProvider._internal(
        (ref) => create(ref as RetrieveProductKeyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        endPoint: endPoint,
        functionKey: functionKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductKeyNames> createElement() {
    return _RetrieveProductKeyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RetrieveProductKeyProvider &&
        other.endPoint == endPoint &&
        other.functionKey == functionKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, endPoint.hashCode);
    hash = _SystemHash.combine(hash, functionKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RetrieveProductKeyRef on AutoDisposeFutureProviderRef<ProductKeyNames> {
  /// The parameter `endPoint` of this provider.
  String get endPoint;

  /// The parameter `functionKey` of this provider.
  String get functionKey;
}

class _RetrieveProductKeyProviderElement
    extends AutoDisposeFutureProviderElement<ProductKeyNames>
    with RetrieveProductKeyRef {
  _RetrieveProductKeyProviderElement(super.provider);

  @override
  String get endPoint => (origin as RetrieveProductKeyProvider).endPoint;
  @override
  String get functionKey => (origin as RetrieveProductKeyProvider).functionKey;
}

String _$retrieveProductVarKeyHash() =>
    r'1ad177900c4f72bfeb5552ab340321d859e5de3f';

/// See also [retrieveProductVarKey].
@ProviderFor(retrieveProductVarKey)
const retrieveProductVarKeyProvider = RetrieveProductVarKeyFamily();

/// See also [retrieveProductVarKey].
class RetrieveProductVarKeyFamily extends Family<AsyncValue<ProductKeyNames>> {
  /// See also [retrieveProductVarKey].
  const RetrieveProductVarKeyFamily();

  /// See also [retrieveProductVarKey].
  RetrieveProductVarKeyProvider call(
    String endPoint,
    String functionKey,
  ) {
    return RetrieveProductVarKeyProvider(
      endPoint,
      functionKey,
    );
  }

  @override
  RetrieveProductVarKeyProvider getProviderOverride(
    covariant RetrieveProductVarKeyProvider provider,
  ) {
    return call(
      provider.endPoint,
      provider.functionKey,
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
  String? get name => r'retrieveProductVarKeyProvider';
}

/// See also [retrieveProductVarKey].
class RetrieveProductVarKeyProvider
    extends AutoDisposeFutureProvider<ProductKeyNames> {
  /// See also [retrieveProductVarKey].
  RetrieveProductVarKeyProvider(
    String endPoint,
    String functionKey,
  ) : this._internal(
          (ref) => retrieveProductVarKey(
            ref as RetrieveProductVarKeyRef,
            endPoint,
            functionKey,
          ),
          from: retrieveProductVarKeyProvider,
          name: r'retrieveProductVarKeyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$retrieveProductVarKeyHash,
          dependencies: RetrieveProductVarKeyFamily._dependencies,
          allTransitiveDependencies:
              RetrieveProductVarKeyFamily._allTransitiveDependencies,
          endPoint: endPoint,
          functionKey: functionKey,
        );

  RetrieveProductVarKeyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.endPoint,
    required this.functionKey,
  }) : super.internal();

  final String endPoint;
  final String functionKey;

  @override
  Override overrideWith(
    FutureOr<ProductKeyNames> Function(RetrieveProductVarKeyRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RetrieveProductVarKeyProvider._internal(
        (ref) => create(ref as RetrieveProductVarKeyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        endPoint: endPoint,
        functionKey: functionKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductKeyNames> createElement() {
    return _RetrieveProductVarKeyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RetrieveProductVarKeyProvider &&
        other.endPoint == endPoint &&
        other.functionKey == functionKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, endPoint.hashCode);
    hash = _SystemHash.combine(hash, functionKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RetrieveProductVarKeyRef
    on AutoDisposeFutureProviderRef<ProductKeyNames> {
  /// The parameter `endPoint` of this provider.
  String get endPoint;

  /// The parameter `functionKey` of this provider.
  String get functionKey;
}

class _RetrieveProductVarKeyProviderElement
    extends AutoDisposeFutureProviderElement<ProductKeyNames>
    with RetrieveProductVarKeyRef {
  _RetrieveProductVarKeyProviderElement(super.provider);

  @override
  String get endPoint => (origin as RetrieveProductVarKeyProvider).endPoint;
  @override
  String get functionKey =>
      (origin as RetrieveProductVarKeyProvider).functionKey;
}

String _$retrieveOptImgHash() => r'9ea07dbd2e98088d9cc23ddc481df2bfe46129ec';

/// See also [retrieveOptImg].
@ProviderFor(retrieveOptImg)
const retrieveOptImgProvider = RetrieveOptImgFamily();

/// See also [retrieveOptImg].
class RetrieveOptImgFamily extends Family<AsyncValue<List>> {
  /// See also [retrieveOptImg].
  const RetrieveOptImgFamily();

  /// See also [retrieveOptImg].
  RetrieveOptImgProvider call(
    String endPoint,
  ) {
    return RetrieveOptImgProvider(
      endPoint,
    );
  }

  @override
  RetrieveOptImgProvider getProviderOverride(
    covariant RetrieveOptImgProvider provider,
  ) {
    return call(
      provider.endPoint,
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
  String? get name => r'retrieveOptImgProvider';
}

/// See also [retrieveOptImg].
class RetrieveOptImgProvider extends AutoDisposeFutureProvider<List> {
  /// See also [retrieveOptImg].
  RetrieveOptImgProvider(
    String endPoint,
  ) : this._internal(
          (ref) => retrieveOptImg(
            ref as RetrieveOptImgRef,
            endPoint,
          ),
          from: retrieveOptImgProvider,
          name: r'retrieveOptImgProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$retrieveOptImgHash,
          dependencies: RetrieveOptImgFamily._dependencies,
          allTransitiveDependencies:
              RetrieveOptImgFamily._allTransitiveDependencies,
          endPoint: endPoint,
        );

  RetrieveOptImgProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.endPoint,
  }) : super.internal();

  final String endPoint;

  @override
  Override overrideWith(
    FutureOr<List> Function(RetrieveOptImgRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RetrieveOptImgProvider._internal(
        (ref) => create(ref as RetrieveOptImgRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        endPoint: endPoint,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List> createElement() {
    return _RetrieveOptImgProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RetrieveOptImgProvider && other.endPoint == endPoint;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, endPoint.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RetrieveOptImgRef on AutoDisposeFutureProviderRef<List> {
  /// The parameter `endPoint` of this provider.
  String get endPoint;
}

class _RetrieveOptImgProviderElement
    extends AutoDisposeFutureProviderElement<List> with RetrieveOptImgRef {
  _RetrieveOptImgProviderElement(super.provider);

  @override
  String get endPoint => (origin as RetrieveOptImgProvider).endPoint;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
