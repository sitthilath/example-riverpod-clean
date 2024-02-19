
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/models/either.dart';
import '../domain/models/response.dart';
part 'http_exception.freezed.dart';

class AppException implements Exception {
  final String message;
  final int statusCode;
  final String identifier;

  AppException({
    required this.message,
    required this.statusCode,
    required this.identifier,
  });
  @override
  String toString() {
    return 'statusCode=$statusCode\nmessage=$message\nidentifier=$identifier';
  }
}


@freezed
sealed class CacheFailureException with _$CacheFailureException implements AppException{

  const factory CacheFailureException({
   @Default('Unable to save user') String message,
   @Default(100) int statusCode,
   @Default('Cache failure exception') String identifier,
  }) = _CacheFailureException;

  // Additional factory constructor to create an instance with default values

  factory CacheFailureException.appException() => const CacheFailureException();
}

//  extension

extension HttpExceptionExtension on AppException {
  Left<AppException, Response> get toLeft => Left<AppException, Response>(this);
}


