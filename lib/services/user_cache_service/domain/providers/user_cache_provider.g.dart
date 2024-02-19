// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cache_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDataSourceHash() => r'bba5903792b59fd25838bd3fb3d53001ab5f89c6';

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

/// See also [userDataSource].
@ProviderFor(userDataSource)
const userDataSourceProvider = UserDataSourceFamily();

/// See also [userDataSource].
class UserDataSourceFamily extends Family<UserDataSource> {
  /// See also [userDataSource].
  const UserDataSourceFamily();

  /// See also [userDataSource].
  UserDataSourceProvider call(
    StorageService storageService,
  ) {
    return UserDataSourceProvider(
      storageService,
    );
  }

  @override
  UserDataSourceProvider getProviderOverride(
    covariant UserDataSourceProvider provider,
  ) {
    return call(
      provider.storageService,
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
  String? get name => r'userDataSourceProvider';
}

/// See also [userDataSource].
class UserDataSourceProvider extends AutoDisposeProvider<UserDataSource> {
  /// See also [userDataSource].
  UserDataSourceProvider(
    StorageService storageService,
  ) : this._internal(
          (ref) => userDataSource(
            ref as UserDataSourceRef,
            storageService,
          ),
          from: userDataSourceProvider,
          name: r'userDataSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userDataSourceHash,
          dependencies: UserDataSourceFamily._dependencies,
          allTransitiveDependencies:
              UserDataSourceFamily._allTransitiveDependencies,
          storageService: storageService,
        );

  UserDataSourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.storageService,
  }) : super.internal();

  final StorageService storageService;

  @override
  Override overrideWith(
    UserDataSource Function(UserDataSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserDataSourceProvider._internal(
        (ref) => create(ref as UserDataSourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        storageService: storageService,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<UserDataSource> createElement() {
    return _UserDataSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDataSourceProvider &&
        other.storageService == storageService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, storageService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserDataSourceRef on AutoDisposeProviderRef<UserDataSource> {
  /// The parameter `storageService` of this provider.
  StorageService get storageService;
}

class _UserDataSourceProviderElement
    extends AutoDisposeProviderElement<UserDataSource> with UserDataSourceRef {
  _UserDataSourceProviderElement(super.provider);

  @override
  StorageService get storageService =>
      (origin as UserDataSourceProvider).storageService;
}

String _$userRepositoryHash() => r'7bbb298045ba163ca4e495a65b93bc208484d0bf';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = AutoDisposeProvider<UserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryRef = AutoDisposeProviderRef<UserRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
