// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signInUsingUNPassword2Hash() =>
    r'2cdcaa065454ea212a75b2ac09eb48eee231f3cc';

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

/// See also [signInUsingUNPassword2].
@ProviderFor(signInUsingUNPassword2)
const signInUsingUNPassword2Provider = SignInUsingUNPassword2Family();

/// See also [signInUsingUNPassword2].
class SignInUsingUNPassword2Family extends Family<AsyncValue<AdminData>> {
  /// See also [signInUsingUNPassword2].
  const SignInUsingUNPassword2Family();

  /// See also [signInUsingUNPassword2].
  SignInUsingUNPassword2Provider call(
    String? adminID,
    String? password,
    bool? isGoogleAccount,
  ) {
    return SignInUsingUNPassword2Provider(
      adminID,
      password,
      isGoogleAccount,
    );
  }

  @override
  SignInUsingUNPassword2Provider getProviderOverride(
    covariant SignInUsingUNPassword2Provider provider,
  ) {
    return call(
      provider.adminID,
      provider.password,
      provider.isGoogleAccount,
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
  String? get name => r'signInUsingUNPassword2Provider';
}

/// See also [signInUsingUNPassword2].
class SignInUsingUNPassword2Provider
    extends AutoDisposeFutureProvider<AdminData> {
  /// See also [signInUsingUNPassword2].
  SignInUsingUNPassword2Provider(
    String? adminID,
    String? password,
    bool? isGoogleAccount,
  ) : this._internal(
          (ref) => signInUsingUNPassword2(
            ref as SignInUsingUNPassword2Ref,
            adminID,
            password,
            isGoogleAccount,
          ),
          from: signInUsingUNPassword2Provider,
          name: r'signInUsingUNPassword2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signInUsingUNPassword2Hash,
          dependencies: SignInUsingUNPassword2Family._dependencies,
          allTransitiveDependencies:
              SignInUsingUNPassword2Family._allTransitiveDependencies,
          adminID: adminID,
          password: password,
          isGoogleAccount: isGoogleAccount,
        );

  SignInUsingUNPassword2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.adminID,
    required this.password,
    required this.isGoogleAccount,
  }) : super.internal();

  final String? adminID;
  final String? password;
  final bool? isGoogleAccount;

  @override
  Override overrideWith(
    FutureOr<AdminData> Function(SignInUsingUNPassword2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SignInUsingUNPassword2Provider._internal(
        (ref) => create(ref as SignInUsingUNPassword2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        adminID: adminID,
        password: password,
        isGoogleAccount: isGoogleAccount,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AdminData> createElement() {
    return _SignInUsingUNPassword2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignInUsingUNPassword2Provider &&
        other.adminID == adminID &&
        other.password == password &&
        other.isGoogleAccount == isGoogleAccount;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, adminID.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);
    hash = _SystemHash.combine(hash, isGoogleAccount.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SignInUsingUNPassword2Ref on AutoDisposeFutureProviderRef<AdminData> {
  /// The parameter `adminID` of this provider.
  String? get adminID;

  /// The parameter `password` of this provider.
  String? get password;

  /// The parameter `isGoogleAccount` of this provider.
  bool? get isGoogleAccount;
}

class _SignInUsingUNPassword2ProviderElement
    extends AutoDisposeFutureProviderElement<AdminData>
    with SignInUsingUNPassword2Ref {
  _SignInUsingUNPassword2ProviderElement(super.provider);

  @override
  String? get adminID => (origin as SignInUsingUNPassword2Provider).adminID;
  @override
  String? get password => (origin as SignInUsingUNPassword2Provider).password;
  @override
  bool? get isGoogleAccount =>
      (origin as SignInUsingUNPassword2Provider).isGoogleAccount;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
