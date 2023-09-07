// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_user_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitUserRequestEntity {
  String get apiKey => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitUserRequestEntityCopyWith<InitUserRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitUserRequestEntityCopyWith<$Res> {
  factory $InitUserRequestEntityCopyWith(InitUserRequestEntity value,
          $Res Function(InitUserRequestEntity) then) =
      _$InitUserRequestEntityCopyWithImpl<$Res, InitUserRequestEntity>;
  @useResult
  $Res call(
      {String apiKey, String merchantId, String productName, String gender});
}

/// @nodoc
class _$InitUserRequestEntityCopyWithImpl<$Res,
        $Val extends InitUserRequestEntity>
    implements $InitUserRequestEntityCopyWith<$Res> {
  _$InitUserRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? merchantId = null,
    Object? productName = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitUserRequestEntityCopyWith<$Res>
    implements $InitUserRequestEntityCopyWith<$Res> {
  factory _$$_InitUserRequestEntityCopyWith(_$_InitUserRequestEntity value,
          $Res Function(_$_InitUserRequestEntity) then) =
      __$$_InitUserRequestEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey, String merchantId, String productName, String gender});
}

/// @nodoc
class __$$_InitUserRequestEntityCopyWithImpl<$Res>
    extends _$InitUserRequestEntityCopyWithImpl<$Res, _$_InitUserRequestEntity>
    implements _$$_InitUserRequestEntityCopyWith<$Res> {
  __$$_InitUserRequestEntityCopyWithImpl(_$_InitUserRequestEntity _value,
      $Res Function(_$_InitUserRequestEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? merchantId = null,
    Object? productName = null,
    Object? gender = null,
  }) {
    return _then(_$_InitUserRequestEntity(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitUserRequestEntity implements _InitUserRequestEntity {
  const _$_InitUserRequestEntity(
      {required this.apiKey,
      required this.merchantId,
      required this.productName,
      required this.gender});

  @override
  final String apiKey;
  @override
  final String merchantId;
  @override
  final String productName;
  @override
  final String gender;

  @override
  String toString() {
    return 'InitUserRequestEntity(apiKey: $apiKey, merchantId: $merchantId, productName: $productName, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitUserRequestEntity &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, apiKey, merchantId, productName, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitUserRequestEntityCopyWith<_$_InitUserRequestEntity> get copyWith =>
      __$$_InitUserRequestEntityCopyWithImpl<_$_InitUserRequestEntity>(
          this, _$identity);
}

abstract class _InitUserRequestEntity implements InitUserRequestEntity {
  const factory _InitUserRequestEntity(
      {required final String apiKey,
      required final String merchantId,
      required final String productName,
      required final String gender}) = _$_InitUserRequestEntity;

  @override
  String get apiKey;
  @override
  String get merchantId;
  @override
  String get productName;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$_InitUserRequestEntityCopyWith<_$_InitUserRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
