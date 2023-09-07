// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_user_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitUserRequestModel {
  String get apiKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchantid')
  String get merchantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productname')
  String get productName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitUserRequestModelCopyWith<InitUserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitUserRequestModelCopyWith<$Res> {
  factory $InitUserRequestModelCopyWith(InitUserRequestModel value,
          $Res Function(InitUserRequestModel) then) =
      _$InitUserRequestModelCopyWithImpl<$Res, InitUserRequestModel>;
  @useResult
  $Res call(
      {String apiKey,
      @JsonKey(name: 'merchantid') String merchantId,
      @JsonKey(name: 'productname') String productName,
      String gender});
}

/// @nodoc
class _$InitUserRequestModelCopyWithImpl<$Res,
        $Val extends InitUserRequestModel>
    implements $InitUserRequestModelCopyWith<$Res> {
  _$InitUserRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_InitUserRequestModelCopyWith<$Res>
    implements $InitUserRequestModelCopyWith<$Res> {
  factory _$$_InitUserRequestModelCopyWith(_$_InitUserRequestModel value,
          $Res Function(_$_InitUserRequestModel) then) =
      __$$_InitUserRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey,
      @JsonKey(name: 'merchantid') String merchantId,
      @JsonKey(name: 'productname') String productName,
      String gender});
}

/// @nodoc
class __$$_InitUserRequestModelCopyWithImpl<$Res>
    extends _$InitUserRequestModelCopyWithImpl<$Res, _$_InitUserRequestModel>
    implements _$$_InitUserRequestModelCopyWith<$Res> {
  __$$_InitUserRequestModelCopyWithImpl(_$_InitUserRequestModel _value,
      $Res Function(_$_InitUserRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? merchantId = null,
    Object? productName = null,
    Object? gender = null,
  }) {
    return _then(_$_InitUserRequestModel(
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
@JsonSerializable(createFactory: false)
class _$_InitUserRequestModel implements _InitUserRequestModel {
  const _$_InitUserRequestModel(
      {required this.apiKey,
      @JsonKey(name: 'merchantid') required this.merchantId,
      @JsonKey(name: 'productname') required this.productName,
      required this.gender});

  @override
  final String apiKey;
  @override
  @JsonKey(name: 'merchantid')
  final String merchantId;
  @override
  @JsonKey(name: 'productname')
  final String productName;
  @override
  final String gender;

  @override
  String toString() {
    return 'InitUserRequestModel(apiKey: $apiKey, merchantId: $merchantId, productName: $productName, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitUserRequestModel &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, apiKey, merchantId, productName, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitUserRequestModelCopyWith<_$_InitUserRequestModel> get copyWith =>
      __$$_InitUserRequestModelCopyWithImpl<_$_InitUserRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitUserRequestModelToJson(
      this,
    );
  }
}

abstract class _InitUserRequestModel implements InitUserRequestModel {
  const factory _InitUserRequestModel(
      {required final String apiKey,
      @JsonKey(name: 'merchantid') required final String merchantId,
      @JsonKey(name: 'productname') required final String productName,
      required final String gender}) = _$_InitUserRequestModel;

  @override
  String get apiKey;
  @override
  @JsonKey(name: 'merchantid')
  String get merchantId;
  @override
  @JsonKey(name: 'productname')
  String get productName;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$_InitUserRequestModelCopyWith<_$_InitUserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
