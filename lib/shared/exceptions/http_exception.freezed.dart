// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheFailureException {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CacheFailureExceptionCopyWith<CacheFailureException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheFailureExceptionCopyWith<$Res> {
  factory $CacheFailureExceptionCopyWith(CacheFailureException value,
          $Res Function(CacheFailureException) then) =
      _$CacheFailureExceptionCopyWithImpl<$Res, CacheFailureException>;
  @useResult
  $Res call({String message, int statusCode, String identifier});
}

/// @nodoc
class _$CacheFailureExceptionCopyWithImpl<$Res,
        $Val extends CacheFailureException>
    implements $CacheFailureExceptionCopyWith<$Res> {
  _$CacheFailureExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CacheFailureExceptionImplCopyWith<$Res>
    implements $CacheFailureExceptionCopyWith<$Res> {
  factory _$$CacheFailureExceptionImplCopyWith(
          _$CacheFailureExceptionImpl value,
          $Res Function(_$CacheFailureExceptionImpl) then) =
      __$$CacheFailureExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, String identifier});
}

/// @nodoc
class __$$CacheFailureExceptionImplCopyWithImpl<$Res>
    extends _$CacheFailureExceptionCopyWithImpl<$Res,
        _$CacheFailureExceptionImpl>
    implements _$$CacheFailureExceptionImplCopyWith<$Res> {
  __$$CacheFailureExceptionImplCopyWithImpl(_$CacheFailureExceptionImpl _value,
      $Res Function(_$CacheFailureExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? identifier = null,
  }) {
    return _then(_$CacheFailureExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailureExceptionImpl implements _CacheFailureException {
  const _$CacheFailureExceptionImpl(
      {this.message = 'Unable to save user',
      this.statusCode = 100,
      this.identifier = 'Cache failure exception'});

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey()
  final String identifier;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureExceptionImplCopyWith<_$CacheFailureExceptionImpl>
      get copyWith => __$$CacheFailureExceptionImplCopyWithImpl<
          _$CacheFailureExceptionImpl>(this, _$identity);
}

abstract class _CacheFailureException implements CacheFailureException {
  const factory _CacheFailureException(
      {final String message,
      final int statusCode,
      final String identifier}) = _$CacheFailureExceptionImpl;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$CacheFailureExceptionImplCopyWith<_$CacheFailureExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
