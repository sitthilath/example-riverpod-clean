import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/remote/dio_network_service.dart';

part 'dio_network_service_provider.g.dart';

@Riverpod(keepAlive: true)
DioNetworkService dioNetworkService(DioNetworkServiceRef ref){
  final dio = Dio();
  return DioNetworkService(dio);
}
