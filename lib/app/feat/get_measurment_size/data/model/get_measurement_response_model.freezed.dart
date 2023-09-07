// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_measurement_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMeasurementResponseModel _$GetMeasurementResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetMeasurementResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetMeasurementResponseModel {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMeasurementResponseModelCopyWith<GetMeasurementResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMeasurementResponseModelCopyWith<$Res> {
  factory $GetMeasurementResponseModelCopyWith(
          GetMeasurementResponseModel value,
          $Res Function(GetMeasurementResponseModel) then) =
      _$GetMeasurementResponseModelCopyWithImpl<$Res,
          GetMeasurementResponseModel>;
  @useResult
  $Res call({String code, String message, dynamic userId, dynamic status});
}

/// @nodoc
class _$GetMeasurementResponseModelCopyWithImpl<$Res,
        $Val extends GetMeasurementResponseModel>
    implements $GetMeasurementResponseModelCopyWith<$Res> {
  _$GetMeasurementResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetMeasurementResponseModelCopyWith<$Res>
    implements $GetMeasurementResponseModelCopyWith<$Res> {
  factory _$$_GetMeasurementResponseModelCopyWith(
          _$_GetMeasurementResponseModel value,
          $Res Function(_$_GetMeasurementResponseModel) then) =
      __$$_GetMeasurementResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message, dynamic userId, dynamic status});
}

/// @nodoc
class __$$_GetMeasurementResponseModelCopyWithImpl<$Res>
    extends _$GetMeasurementResponseModelCopyWithImpl<$Res,
        _$_GetMeasurementResponseModel>
    implements _$$_GetMeasurementResponseModelCopyWith<$Res> {
  __$$_GetMeasurementResponseModelCopyWithImpl(
      _$_GetMeasurementResponseModel _value,
      $Res Function(_$_GetMeasurementResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? userId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_GetMeasurementResponseModel(
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
@JsonSerializable(createToJson: false)
class _$_GetMeasurementResponseModel implements _GetMeasurementResponseModel {
  const _$_GetMeasurementResponseModel(
      {required this.code, required this.message, this.userId, this.status});

  factory _$_GetMeasurementResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetMeasurementResponseModelFromJson(json);

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
    return 'GetMeasurementResponseModel(code: $code, message: $message, userId: $userId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMeasurementResponseModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
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
  _$$_GetMeasurementResponseModelCopyWith<_$_GetMeasurementResponseModel>
      get copyWith => __$$_GetMeasurementResponseModelCopyWithImpl<
          _$_GetMeasurementResponseModel>(this, _$identity);
}

abstract class _GetMeasurementResponseModel
    implements GetMeasurementResponseModel {
  const factory _GetMeasurementResponseModel(
      {required final String code,
      required final String message,
      final dynamic userId,
      final dynamic status}) = _$_GetMeasurementResponseModel;

  factory _GetMeasurementResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GetMeasurementResponseModel.fromJson;

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
  _$$_GetMeasurementResponseModelCopyWith<_$_GetMeasurementResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
