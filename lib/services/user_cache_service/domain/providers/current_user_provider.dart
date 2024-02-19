
import 'package:halpay/services/user_cache_service/domain/providers/user_cache_provider.dart';
import 'package:halpay/services/user_cache_service/domain/repositories/user_cache_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/domain/models/either.dart';
import '../../../../shared/domain/models/user/user_model.dart';
import '../../../../shared/exceptions/http_exception.dart';

part 'current_user_provider.g.dart';

@riverpod
Future<User?> currentUser(CurrentUserRef ref) async {
  final repository = ref.watch(userRepositoryProvider);
  final eitherType = (await repository.fetchUser());

return eitherType.fold((l) => null, (r) => r);
}