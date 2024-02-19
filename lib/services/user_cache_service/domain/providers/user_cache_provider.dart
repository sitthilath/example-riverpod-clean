
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/data/local/storage_service.dart';
import '../../../../shared/domain/providers/flutter_secure_storage_service_provider.dart';
import '../../data/datasource/user_local_datasource.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../repositories/user_cache_repository.dart';

part 'user_cache_provider.g.dart';


@riverpod
UserDataSource userDataSource(UserDataSourceRef ref,StorageService storageService)=>UserLocalDatasource(storageService);

@riverpod
UserRepository userRepository(UserRepositoryRef ref){
  final storageService = ref.watch(flutterSecureStorageServiceProvider);
  final userDataSource = ref.watch(userDataSourceProvider(storageService));
  return UserRepositoryImpl(userDataSource);
}