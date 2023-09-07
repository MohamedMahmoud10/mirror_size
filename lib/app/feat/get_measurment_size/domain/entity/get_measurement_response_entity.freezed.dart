// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_measurement_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetMeasurementResponseEntity {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMeasurementResponseEntityCopyWith<GetMeasurementResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMeasurementResponseEntityCopyWith<$Res> {
  factory $GetMeasurementResponseEntityCopyWith(
          GetMeasurementResponseEntity value,
          $Res Function(GetMeasurementResponseEntity) then) =
      _$GetMeasurementResponseEntityCopyWithImpl<$Res,
          GetMeasurementResponseEntity>;
  @useResult
  $Res call({String code, String message, dynamic userId, dynamic status});
}

/// @nodoc
class _$GetMeasurementResponseEntityCopyWithImpl<$Res,
        $Val extends GetMeasurementResponseEntity>
    implements $GetMeasurementResponseEntityCopyWith<$Res> {
  _$GetMeasurementResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? userId = freezed,
    Object? status = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMeasurementResponseEntityCopyWith<$Res>
    implements $GetMeasurementResponseEntityCopyWith<$Res> {
  factory _$$_GetMeasurementResponseEntityCopyWith(
          _$_GetMeasurementResponseEntity value,
          $Res Function(_$_GetMeasurementResponseEntity) then) =
      __$$_GetMeasurementResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message, dynamic userId, dynamic status});
}

/// @nodoc
class __$$_GetMeasurementResponseEntityCopyWithImpl<$Res>
    extends _$GetMeasurementResponseEntityCopyWithImpl<$Res,
        _$_GetMeasurementResponseEntity>
    implements _$$_GetMeasurementResponseEntityCopyWith<$Res> {
  __$$_GetMeasurementResponseEntityCopyWithImpl(
      _$_GetMeasurementResponseEntity _value,
      $Res Function(_$_GetMeasurementResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? userId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_GetMeasurementResponseEntity(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId ? _value.userId! : userId,
      status: freezed == status ? _value.status! : status,
    ));
  }
}

/// @nodoc

class _$_GetMeasurementResponseEntity implements _GetMeasurementResponseEntity {
  const _$_GetMeasurementResponseEntity(
      {required this.code, required this.message, this.userId, this.status});

  @override
  final String code;
  @override
  final String message;
  @override
  final dynamic userId;
  @override
  final dynamic status;

  @override
  String toString() {
    return 'GetMeasurementResponseEntity(code: $code, message: $message, userId: $userId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMeasurementResponseEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      message,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMeasurementResponseEntityCopyWith<_$_GetMeasurementResponseEntity>
      get copyWith => __$$_GetMeasurementResponseEntityCopyWithImpl<
          _$_GetMeasurementResponseEntity>(this, _$identity);
}

abstract class _GetMeasurementResponseEntity
    implements GetMeasurementResponseEntity {
  const factory _GetMeasurementResponseEntity(
      {required final String code,
      required final String message,
      final dynamic userId,
      final dynamic status}) = _$_GetMeasurementResponseEntity;

  @override
  String get code;
  @override
  String get message;
  @override
  dynamic get userId;
  @override
  dynamic get status;
  @override
  @JsonKey(ignore: true)
  _$$_GetMeasurementResponseEntityCopyWith<_$_GetMeasurementResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}
