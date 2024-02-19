
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../services/user_cache_service/domain/providers/user_cache_provider.dart';
import '../../../../../services/user_cache_service/domain/repositories/user_cache_repository.dart';
import '../../../../../shared/domain/models/user/user_model.dart';
import '../../../../../shared/exceptions/http_exception.dart';
import '../../../domain/providers/login_provider.dart';
import '../../../domain/repositories/auth_repository.dart';
import 'auth_state.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  late  final AuthenticationRepository _authRepository;
  late  final UserRepository _userRepository;

  Future<void> loginUser(String username, String password) async {
    state = const AuthState.loading();
    final response = await _authRepository.loginUser(
      user: User(username: username, password: password),
    );

    state = await response.fold(
      (failure) => AuthState.failure(failure),
      (user) async {
        final hasSavedUser = await _userRepository.saveUser(user: user);
        if (hasSavedUser) {
          return const AuthState.success();
        }
        return AuthState.failure(CacheFailureException.appException());
      },
    );
  }

  @override
  AuthState build() {
    _authRepository = ref.watch(authRepositoryProvider);
    _userRepository = ref.watch(userRepositoryProvider);
    return const AuthState.initial();
  }
}
