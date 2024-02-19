
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../services/user_cache_service/domain/providers/user_cache_provider.dart';

part 'splash_provider.g.dart';

@riverpod
Future<dynamic> userLoginCheck (UserLoginCheckRef ref) async {
  final repo = ref.watch(userRepositoryProvider);
  return await repo.hasUser();
}