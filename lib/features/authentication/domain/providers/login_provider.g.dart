// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authDataSourceHash() => r'dc294067fa63163c4bd97d5c37420c29665c8ed7';

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

/// See also [authDataSource].
@ProviderFor(authDataSource)
const authDataSourceProvider = AuthDataSourceFamily();

/// See also [authDataSource].
class AuthDataSourceFamily extends Family<LoginUserDataSource> {
  /// See also [authDataSource].
  const AuthDataSourceFamily();

  /// See also [authDataSource].
  AuthDataSourceProvider call(
    NetworkService networkService,
  ) {
    return AuthDataSourceProvider(
      networkService,
    );
  }

  @override
  AuthDataSourceProvider getProviderOverride(
    covariant AuthDataSourceProvider provider,
  ) {
    return call(
      provider.networkService,
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
  String? get name => r'authDataSourceProvider';
}

/// See also [authDataSource].
class AuthDataSourceProvider extends AutoDisposeProvider<LoginUserDataSource> {
  /// See also [authDataSource].
  AuthDataSourceProvider(
    NetworkService networkService,
  ) : this._internal(
          (ref) => authDataSource(
            ref as AuthDataSourceRef,
            networkService,
          ),
          from: authDataSourceProvider,
          name: r'authDataSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authDataSourceHash,
          dependencies: AuthDataSourceFamily._dependencies,
          allTransitiveDependencies:
              AuthDataSourceFamily._allTransitiveDependencies,
          networkService: networkService,
        );

  AuthDataSourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.networkService,
  }) : super.internal();

  final NetworkService networkService;

  @override
  Override overrideWith(
    LoginUserDataSource Function(AuthDataSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AuthDataSourceProvider._internal(
        (ref) => create(ref as AuthDataSourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        networkService: networkService,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<LoginUserDataSource> createElement() {
    return _AuthDataSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthDataSourceProvider &&
        other.networkService == networkService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, networkService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthDataSourceRef on AutoDisposeProviderRef<LoginUserDataSource> {
  /// The parameter `networkService` of this provider.
  NetworkService get networkService;
}

class _AuthDataSourceProviderElement
    extends AutoDisposeProviderElement<LoginUserDataSource>
    with AuthDataSourceRef {
  _AuthDataSourceProviderElement(super.provider);

  @override
  NetworkService get networkService =>
      (origin as AuthDataSourceProvider).networkService;
}

String _$authRepositoryHash() => r'40631ed0175573def6d0c89ba4ffd96dcf0e8e34';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider =
    AutoDisposeProvider<AuthenticationRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthenticationRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
