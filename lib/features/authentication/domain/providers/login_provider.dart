
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/data/remote/network_service.dart';
import '../../../../shared/domain/providers/dio_network_service_provider.dart';
import '../../data/datasource/auth_remote_data_source.dart';
import '../../data/repositories/authentication_repository_impl.dart';
import '../repositories/auth_repository.dart';

part 'login_provider.g.dart';


@riverpod
LoginUserDataSource authDataSource(AuthDataSourceRef ref,NetworkService networkService)=>LoginUserRemoteDataSource(networkService);

@riverpod
AuthenticationRepository authRepository(AuthRepositoryRef ref){
   final  dioNetworkService = ref.watch(dioNetworkServiceProvider);
   final dataSource =
  ref.watch(authDataSourceProvider(dioNetworkService));

  return AuthenticationRepositoryImpl(dataSource);
}
