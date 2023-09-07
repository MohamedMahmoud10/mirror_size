// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_user_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitUserResponseEntity {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitUserResponseEntityCopyWith<InitUserResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitUserResponseEntityCopyWith<$Res> {
  factory $InitUserResponseEntityCopyWith(InitUserResponseEntity value,
          $Res Function(InitUserResponseEntity) then) =
      _$InitUserResponseEntityCopyWithImpl<$Res, InitUserResponseEntity>;
  @useResult
  $Res call({String code, String message, String userId});
}

/// @nodoc
class _$InitUserResponseEntityCopyWithImpl<$Res,
        $Val extends InitUserResponseEntity>
    implements $InitUserResponseEntityCopyWith<$Res> {
  _$InitUserResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitUserResponseEntityCopyWith<$Res>
    implements $InitUserResponseEntityCopyWith<$Res> {
  factory _$$_InitUserResponseEntityCopyWith(_$_InitUserResponseEntity value,
          $Res Function(_$_InitUserResponseEntity) then) =
      __$$_InitUserResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message, String userId});
}

/// @nodoc
class __$$_InitUserResponseEntityCopyWithImpl<$Res>
    extends _$InitUserResponseEntityCopyWithImpl<$Res,
        _$_InitUserResponseEntity>
    implements _$$_InitUserResponseEntityCopyWith<$Res> {
  __$$_InitUserResponseEntityCopyWithImpl(_$_InitUserResponseEntity _value,
      $Res Function(_$_InitUserResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? userId = null,
  }) {
    return _then(_$_InitUserResponseEntity(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitUserResponseEntity implements _InitUserResponseEntity {
  const _$_InitUserResponseEntity(
      {required this.code, required this.message, required this.userId});

  @override
  final String code;
  @override
  final String message;
  @override
  final String userId;

  @override
  String toString() {
    return 'InitUserResponseEntity(code: $code, message: $message, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitUserResponseEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitUserResponseEntityCopyWith<_$_InitUserResponseEntity> get copyWith =>
      __$$_InitUserResponseEntityCopyWithImpl<_$_InitUserResponseEntity>(
          this, _$identity);
}

abstract class _InitUserResponseEntity implements InitUserResponseEntity {
  const factory _InitUserResponseEntity(
      {required final String code,
      required final String message,
      required final String userId}) = _$_InitUserResponseEntity;

  @override
  String get code;
  @override
  String get message;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_InitUserResponseEntityCopyWith<_$_InitUserResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
