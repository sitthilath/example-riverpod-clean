

import '../../../../shared/data/remote/network_service.dart';
import '../../../../shared/domain/models/either.dart';
import '../../../../shared/domain/models/user/user_model.dart';
import '../../../../shared/exceptions/http_exception.dart';

abstract class LoginUserDataSource {
  Future<Either<AppException, User>> loginUser({required User user});

  Future<Either<AppException, User>> registerUser({required User user});
}

class LoginUserRemoteDataSource implements LoginUserDataSource {
  final NetworkService networkService;

  LoginUserRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, User>> loginUser({required User user}) async {
    try {
      final eitherType = await networkService.post(
        '/auth/login',
        data: user.toJson(),
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final user = User.fromJson(response.data);
          // update the token for requests
          networkService.updateHeader(
            {'Authorization': user.token},
          );

          return Right(user);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: 'Unknown error occurred',
          statusCode: 1,
          identifier: '${e.toString()}\nLoginUserRemoteDataSource.loginUser',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, User>> registerUser({required User user}) async {
    try {
      final eitherType = await networkService.post(
        '/auth/login',
        data: user.toJson(),
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          final user = User.fromJson(response.data);
          // update the token for requests
          networkService.updateHeader(
            {'Authorization': user.token},
          );

          return Right(user);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: 'Unknown error occurred',
          statusCode: 1,
          identifier: '${e.toString()}\nLoginUserRemoteDataSource.loginUser',
        ),
      );
    }
  }
}

// class LoginUserRemoteDataSourceFB implements LoginUserDataSource {
//   final NetworkService networkService;
//
//   LoginUserRemoteDataSourceFB(this.networkService);
//
//   @override
//   Future<Either<AppException, User>> loginUser({required User user}) async {
//     try {
//       final eitherType = await networkService.post(
//         '/auth/login',
//         data: user.toJson(),
//       );
//       return eitherType.fold(
//         (exception) {
//           return Left(exception);
//         },
//         (response) {
//           final user = User.fromJson(response.data);
//           // update the token for requests
//           networkService.updateHeader(
//             {'Authorization': user.token},
//           );
//
//           return Right(user);
//         },
//       );
//     } catch (e) {
//       return Left(
//         AppException(
//           message: 'Unknown error occurred',
//           statusCode: 1,
//           identifier: '${e.toString()}\nLoginUserRemoteDataSource.loginUser',
//         ),
//       );
//     }
//   }
// }
