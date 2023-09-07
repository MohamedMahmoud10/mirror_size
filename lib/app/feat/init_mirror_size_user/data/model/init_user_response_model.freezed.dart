// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitUserResponseModel _$InitUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return _InitUserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$InitUserResponseModel {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitUserResponseModelCopyWith<InitUserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitUserResponseModelCopyWith<$Res> {
  factory $InitUserResponseModelCopyWith(InitUserResponseModel value,
          $Res Function(InitUserResponseModel) then) =
      _$InitUserResponseModelCopyWithImpl<$Res, InitUserResponseModel>;
  @useResult
  $Res call({String code, String message, String userId});
}

/// @nodoc
class _$InitUserResponseModelCopyWithImpl<$Res,
        $Val extends InitUserResponseModel>
    implements $InitUserResponseModelCopyWith<$Res> {
  _$InitUserResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_InitUserResponseModelCopyWith<$Res>
    implements $InitUserResponseModelCopyWith<$Res> {
  factory _$$_InitUserResponseModelCopyWith(_$_InitUserResponseModel value,
          $Res Function(_$_InitUserResponseModel) then) =
      __$$_InitUserResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message, String userId});
}

/// @nodoc
class __$$_InitUserResponseModelCopyWithImpl<$Res>
    extends _$InitUserResponseModelCopyWithImpl<$Res, _$_InitUserResponseModel>
    implements _$$_InitUserResponseModelCopyWith<$Res> {
  __$$_InitUserResponseModelCopyWithImpl(_$_InitUserResponseModel _value,
      $Res Function(_$_InitUserResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? userId = null,
  }) {
    return _then(_$_InitUserResponseModel(
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
@JsonSerializable(createToJson: false)
class _$_InitUserResponseModel implements _InitUserResponseModel {
  const _$_InitUserResponseModel(
      {required this.code, required this.message, required this.userId});

  factory _$_InitUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_InitUserResponseModelFromJson(json);

  @override
  final String code;
  @override
  final String message;
  @override
  final String userId;

  @override
  String toString() {
    return 'InitUserResponseModel(code: $code, message: $message, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitUserResponseModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitUserResponseModelCopyWith<_$_InitUserResponseModel> get copyWith =>
      __$$_InitUserResponseModelCopyWithImpl<_$_InitUserResponseModel>(
          this, _$identity);
}

abstract class _InitUserResponseModel implements InitUserResponseModel {
  const factory _InitUserResponseModel(
      {required final String code,
      required final String message,
      required final String userId}) = _$_InitUserResponseModel;

  factory _InitUserResponseModel.fromJson(Map<String, dynamic> json) =
      _$_InitUserResponseModel.fromJson;

  @override
  String get code;
  @override
  String get message;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_InitUserResponseModelCopyWith<_$_InitUserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
