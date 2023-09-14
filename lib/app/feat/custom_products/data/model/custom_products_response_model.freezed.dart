// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_products_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomProductsResponseModel _$CustomProductsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CustomProductsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CustomProductsResponseModel {
  String? get objectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'Gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'Color')
  List<String> get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'Material')
  List<MaterialModel>? get material => throw _privateConstructorUsedError;
  @JsonKey(name: 'Fabric')
  List<FabricResponseModel>? get fabric => throw _privateConstructorUsedError;
  @JsonKey(name: 'Prefrences')
  List<PrefrencesResponseModel>? get prefrences =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'Measurement_Mapping')
  List<MeasurementMappingResponseModel>? get measurementMapping =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomProductsResponseModelCopyWith<CustomProductsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomProductsResponseModelCopyWith<$Res> {
  factory $CustomProductsResponseModelCopyWith(
          CustomProductsResponseModel value,
          $Res Function(CustomProductsResponseModel) then) =
      _$CustomProductsResponseModelCopyWithImpl<$Res,
          CustomProductsResponseModel>;
  @useResult
  $Res call(
      {String? objectId,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Image') String? image,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: 'Gender') String? gender,
      @JsonKey(name: 'Color') List<String> color,
      @JsonKey(name: 'Material') List<MaterialModel>? material,
      @JsonKey(name: 'Fabric') List<FabricResponseModel>? fabric,
      @JsonKey(name: 'Prefrences') List<PrefrencesResponseModel>? prefrences,
      @JsonKey(name: 'Measurement_Mapping')
      List<MeasurementMappingResponseModel>? measurementMapping});
}

/// @nodoc
class _$CustomProductsResponseModelCopyWithImpl<$Res,
        $Val extends CustomProductsResponseModel>
    implements $CustomProductsResponseModelCopyWith<$Res> {
  _$CustomProductsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? gender = freezed,
    Object? color = null,
    Object? material = freezed,
    Object? fabric = freezed,
    Object? prefrences = freezed,
    Object? measurementMapping = freezed,
  }) {
    return _then(_value.copyWith(
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>?,
      fabric: freezed == fabric
          ? _value.fabric
          : fabric // ignore: cast_nullable_to_non_nullable
              as List<FabricResponseModel>?,
      prefrences: freezed == prefrences
          ? _value.prefrences
          : prefrences // ignore: cast_nullable_to_non_nullable
              as List<PrefrencesResponseModel>?,
      measurementMapping: freezed == measurementMapping
          ? _value.measurementMapping
          : measurementMapping // ignore: cast_nullable_to_non_nullable
              as List<MeasurementMappingResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomProductsResponseModelCopyWith<$Res>
    implements $CustomProductsResponseModelCopyWith<$Res> {
  factory _$$_CustomProductsResponseModelCopyWith(
          _$_CustomProductsResponseModel value,
          $Res Function(_$_CustomProductsResponseModel) then) =
      __$$_CustomProductsResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? objectId,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Image') String? image,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: 'Gender') String? gender,
      @JsonKey(name: 'Color') List<String> color,
      @JsonKey(name: 'Material') List<MaterialModel>? material,
      @JsonKey(name: 'Fabric') List<FabricResponseModel>? fabric,
      @JsonKey(name: 'Prefrences') List<PrefrencesResponseModel>? prefrences,
      @JsonKey(name: 'Measurement_Mapping')
      List<MeasurementMappingResponseModel>? measurementMapping});
}

/// @nodoc
class __$$_CustomProductsResponseModelCopyWithImpl<$Res>
    extends _$CustomProductsResponseModelCopyWithImpl<$Res,
        _$_CustomProductsResponseModel>
    implements _$$_CustomProductsResponseModelCopyWith<$Res> {
  __$$_CustomProductsResponseModelCopyWithImpl(
      _$_CustomProductsResponseModel _value,
      $Res Function(_$_CustomProductsResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? gender = freezed,
    Object? color = null,
    Object? material = freezed,
    Object? fabric = freezed,
    Object? prefrences = freezed,
    Object? measurementMapping = freezed,
  }) {
    return _then(_$_CustomProductsResponseModel(
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      color: null == color
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>,
      material: freezed == material
          ? _value._material
          : material // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>?,
      fabric: freezed == fabric
          ? _value._fabric
          : fabric // ignore: cast_nullable_to_non_nullable
              as List<FabricResponseModel>?,
      prefrences: freezed == prefrences
          ? _value._prefrences
          : prefrences // ignore: cast_nullable_to_non_nullable
              as List<PrefrencesResponseModel>?,
      measurementMapping: freezed == measurementMapping
          ? _value._measurementMapping
          : measurementMapping // ignore: cast_nullable_to_non_nullable
              as List<MeasurementMappingResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_CustomProductsResponseModel implements _CustomProductsResponseModel {
  const _$_CustomProductsResponseModel(
      {this.objectId = '',
      @JsonKey(name: 'Name') this.name = '',
      @JsonKey(name: 'Image') this.image = '',
      this.createdAt = '',
      this.updatedAt = '',
      @JsonKey(name: 'Gender') this.gender = '',
      @JsonKey(name: 'Color') final List<String> color = const [],
      @JsonKey(name: 'Material') final List<MaterialModel>? material = const [],
      @JsonKey(name: 'Fabric')
      final List<FabricResponseModel>? fabric = const [],
      @JsonKey(name: 'Prefrences')
      final List<PrefrencesResponseModel>? prefrences = const [],
      @JsonKey(name: 'Measurement_Mapping')
      final List<MeasurementMappingResponseModel>? measurementMapping =
          const []})
      : _color = color,
        _material = material,
        _fabric = fabric,
        _prefrences = prefrences,
        _measurementMapping = measurementMapping;

  factory _$_CustomProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomProductsResponseModelFromJson(json);

  @override
  @JsonKey()
  final String? objectId;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Image')
  final String? image;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey(name: 'Gender')
  final String? gender;
  final List<String> _color;
  @override
  @JsonKey(name: 'Color')
  List<String> get color {
    if (_color is EqualUnmodifiableListView) return _color;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_color);
  }

  final List<MaterialModel>? _material;
  @override
  @JsonKey(name: 'Material')
  List<MaterialModel>? get material {
    final value = _material;
    if (value == null) return null;
    if (_material is EqualUnmodifiableListView) return _material;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FabricResponseModel>? _fabric;
  @override
  @JsonKey(name: 'Fabric')
  List<FabricResponseModel>? get fabric {
    final value = _fabric;
    if (value == null) return null;
    if (_fabric is EqualUnmodifiableListView) return _fabric;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrefrencesResponseModel>? _prefrences;
  @override
  @JsonKey(name: 'Prefrences')
  List<PrefrencesResponseModel>? get prefrences {
    final value = _prefrences;
    if (value == null) return null;
    if (_prefrences is EqualUnmodifiableListView) return _prefrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MeasurementMappingResponseModel>? _measurementMapping;
  @override
  @JsonKey(name: 'Measurement_Mapping')
  List<MeasurementMappingResponseModel>? get measurementMapping {
    final value = _measurementMapping;
    if (value == null) return null;
    if (_measurementMapping is EqualUnmodifiableListView)
      return _measurementMapping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomProductsResponseModel(objectId: $objectId, name: $name, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, gender: $gender, color: $color, material: $material, fabric: $fabric, prefrences: $prefrences, measurementMapping: $measurementMapping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomProductsResponseModel &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(other._color, _color) &&
            const DeepCollectionEquality().equals(other._material, _material) &&
            const DeepCollectionEquality().equals(other._fabric, _fabric) &&
            const DeepCollectionEquality()
                .equals(other._prefrences, _prefrences) &&
            const DeepCollectionEquality()
                .equals(other._measurementMapping, _measurementMapping));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      objectId,
      name,
      image,
      createdAt,
      updatedAt,
      gender,
      const DeepCollectionEquality().hash(_color),
      const DeepCollectionEquality().hash(_material),
      const DeepCollectionEquality().hash(_fabric),
      const DeepCollectionEquality().hash(_prefrences),
      const DeepCollectionEquality().hash(_measurementMapping));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomProductsResponseModelCopyWith<_$_CustomProductsResponseModel>
      get copyWith => __$$_CustomProductsResponseModelCopyWithImpl<
          _$_CustomProductsResponseModel>(this, _$identity);
}

abstract class _CustomProductsResponseModel
    implements CustomProductsResponseModel {
  const factory _CustomProductsResponseModel(
          {final String? objectId,
          @JsonKey(name: 'Name') final String? name,
          @JsonKey(name: 'Image') final String? image,
          final String? createdAt,
          final String? updatedAt,
          @JsonKey(name: 'Gender') final String? gender,
          @JsonKey(name: 'Color') final List<String> color,
          @JsonKey(name: 'Material') final List<MaterialModel>? material,
          @JsonKey(name: 'Fabric') final List<FabricResponseModel>? fabric,
          @JsonKey(name: 'Prefrences')
          final List<PrefrencesResponseModel>? prefrences,
          @JsonKey(name: 'Measurement_Mapping')
          final List<MeasurementMappingResponseModel>? measurementMapping}) =
      _$_CustomProductsResponseModel;

  factory _CustomProductsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CustomProductsResponseModel.fromJson;

  @override
  String? get objectId;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Image')
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: 'Gender')
  String? get gender;
  @override
  @JsonKey(name: 'Color')
  List<String> get color;
  @override
  @JsonKey(name: 'Material')
  List<MaterialModel>? get material;
  @override
  @JsonKey(name: 'Fabric')
  List<FabricResponseModel>? get fabric;
  @override
  @JsonKey(name: 'Prefrences')
  List<PrefrencesResponseModel>? get prefrences;
  @override
  @JsonKey(name: 'Measurement_Mapping')
  List<MeasurementMappingResponseModel>? get measurementMapping;
  @override
  @JsonKey(ignore: true)
  _$$_CustomProductsResponseModelCopyWith<_$_CustomProductsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

PrefrencesResponseModel _$PrefrencesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PrefrencesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PrefrencesResponseModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  List<String>? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Values')
  List<ValuesResponseModel>? get values => throw _privateConstructorUsedError;
  @JsonKey(name: 'Label_AR')
  String? get labelAR => throw _privateConstructorUsedError;
  @JsonKey(name: 'Label_EN')
  String? get labelEN => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrefrencesResponseModelCopyWith<PrefrencesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefrencesResponseModelCopyWith<$Res> {
  factory $PrefrencesResponseModelCopyWith(PrefrencesResponseModel value,
          $Res Function(PrefrencesResponseModel) then) =
      _$PrefrencesResponseModelCopyWithImpl<$Res, PrefrencesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Type') List<String>? type,
      @JsonKey(name: 'Values') List<ValuesResponseModel>? values,
      @JsonKey(name: 'Label_AR') String? labelAR,
      @JsonKey(name: 'Label_EN') String? labelEN});
}

/// @nodoc
class _$PrefrencesResponseModelCopyWithImpl<$Res,
        $Val extends PrefrencesResponseModel>
    implements $PrefrencesResponseModelCopyWith<$Res> {
  _$PrefrencesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? values = freezed,
    Object? labelAR = freezed,
    Object? labelEN = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValuesResponseModel>?,
      labelAR: freezed == labelAR
          ? _value.labelAR
          : labelAR // ignore: cast_nullable_to_non_nullable
              as String?,
      labelEN: freezed == labelEN
          ? _value.labelEN
          : labelEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrefrencesResponseModelCopyWith<$Res>
    implements $PrefrencesResponseModelCopyWith<$Res> {
  factory _$$_PrefrencesResponseModelCopyWith(_$_PrefrencesResponseModel value,
          $Res Function(_$_PrefrencesResponseModel) then) =
      __$$_PrefrencesResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Type') List<String>? type,
      @JsonKey(name: 'Values') List<ValuesResponseModel>? values,
      @JsonKey(name: 'Label_AR') String? labelAR,
      @JsonKey(name: 'Label_EN') String? labelEN});
}

/// @nodoc
class __$$_PrefrencesResponseModelCopyWithImpl<$Res>
    extends _$PrefrencesResponseModelCopyWithImpl<$Res,
        _$_PrefrencesResponseModel>
    implements _$$_PrefrencesResponseModelCopyWith<$Res> {
  __$$_PrefrencesResponseModelCopyWithImpl(_$_PrefrencesResponseModel _value,
      $Res Function(_$_PrefrencesResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? values = freezed,
    Object? labelAR = freezed,
    Object? labelEN = freezed,
  }) {
    return _then(_$_PrefrencesResponseModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValuesResponseModel>?,
      labelAR: freezed == labelAR
          ? _value.labelAR
          : labelAR // ignore: cast_nullable_to_non_nullable
              as String?,
      labelEN: freezed == labelEN
          ? _value.labelEN
          : labelEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_PrefrencesResponseModel implements _PrefrencesResponseModel {
  const _$_PrefrencesResponseModel(
      {@JsonKey(name: 'Name') this.name = '',
      @JsonKey(name: 'Type') final List<String>? type = const [],
      @JsonKey(name: 'Values')
      final List<ValuesResponseModel>? values = const [],
      @JsonKey(name: 'Label_AR') this.labelAR = '',
      @JsonKey(name: 'Label_EN') this.labelEN = ''})
      : _type = type,
        _values = values;

  factory _$_PrefrencesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PrefrencesResponseModelFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  final List<String>? _type;
  @override
  @JsonKey(name: 'Type')
  List<String>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ValuesResponseModel>? _values;
  @override
  @JsonKey(name: 'Values')
  List<ValuesResponseModel>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Label_AR')
  final String? labelAR;
  @override
  @JsonKey(name: 'Label_EN')
  final String? labelEN;

  @override
  String toString() {
    return 'PrefrencesResponseModel(name: $name, type: $type, values: $values, labelAR: $labelAR, labelEN: $labelEN)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrefrencesResponseModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.labelAR, labelAR) || other.labelAR == labelAR) &&
            (identical(other.labelEN, labelEN) || other.labelEN == labelEN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_type),
      const DeepCollectionEquality().hash(_values),
      labelAR,
      labelEN);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrefrencesResponseModelCopyWith<_$_PrefrencesResponseModel>
      get copyWith =>
          __$$_PrefrencesResponseModelCopyWithImpl<_$_PrefrencesResponseModel>(
              this, _$identity);
}

abstract class _PrefrencesResponseModel implements PrefrencesResponseModel {
  const factory _PrefrencesResponseModel(
          {@JsonKey(name: 'Name') final String? name,
          @JsonKey(name: 'Type') final List<String>? type,
          @JsonKey(name: 'Values') final List<ValuesResponseModel>? values,
          @JsonKey(name: 'Label_AR') final String? labelAR,
          @JsonKey(name: 'Label_EN') final String? labelEN}) =
      _$_PrefrencesResponseModel;

  factory _PrefrencesResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PrefrencesResponseModel.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Type')
  List<String>? get type;
  @override
  @JsonKey(name: 'Values')
  List<ValuesResponseModel>? get values;
  @override
  @JsonKey(name: 'Label_AR')
  String? get labelAR;
  @override
  @JsonKey(name: 'Label_EN')
  String? get labelEN;
  @override
  @JsonKey(ignore: true)
  _$$_PrefrencesResponseModelCopyWith<_$_PrefrencesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

ValuesResponseModel _$ValuesResponseModelFromJson(Map<String, dynamic> json) {
  return _ValuesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ValuesResponseModel {
  @JsonKey(name: 'value_en')
  String? get valueEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_ar')
  String? get valueAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'default')
  bool? get def => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValuesResponseModelCopyWith<ValuesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValuesResponseModelCopyWith<$Res> {
  factory $ValuesResponseModelCopyWith(
          ValuesResponseModel value, $Res Function(ValuesResponseModel) then) =
      _$ValuesResponseModelCopyWithImpl<$Res, ValuesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value_en') String? valueEn,
      @JsonKey(name: 'value_ar') String? valueAr,
      @JsonKey(name: 'default') bool? def});
}

/// @nodoc
class _$ValuesResponseModelCopyWithImpl<$Res, $Val extends ValuesResponseModel>
    implements $ValuesResponseModelCopyWith<$Res> {
  _$ValuesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueEn = freezed,
    Object? valueAr = freezed,
    Object? def = freezed,
  }) {
    return _then(_value.copyWith(
      valueEn: freezed == valueEn
          ? _value.valueEn
          : valueEn // ignore: cast_nullable_to_non_nullable
              as String?,
      valueAr: freezed == valueAr
          ? _value.valueAr
          : valueAr // ignore: cast_nullable_to_non_nullable
              as String?,
      def: freezed == def
          ? _value.def
          : def // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValuesResponseModelCopyWith<$Res>
    implements $ValuesResponseModelCopyWith<$Res> {
  factory _$$_ValuesResponseModelCopyWith(_$_ValuesResponseModel value,
          $Res Function(_$_ValuesResponseModel) then) =
      __$$_ValuesResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value_en') String? valueEn,
      @JsonKey(name: 'value_ar') String? valueAr,
      @JsonKey(name: 'default') bool? def});
}

/// @nodoc
class __$$_ValuesResponseModelCopyWithImpl<$Res>
    extends _$ValuesResponseModelCopyWithImpl<$Res, _$_ValuesResponseModel>
    implements _$$_ValuesResponseModelCopyWith<$Res> {
  __$$_ValuesResponseModelCopyWithImpl(_$_ValuesResponseModel _value,
      $Res Function(_$_ValuesResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueEn = freezed,
    Object? valueAr = freezed,
    Object? def = freezed,
  }) {
    return _then(_$_ValuesResponseModel(
      valueEn: freezed == valueEn
          ? _value.valueEn
          : valueEn // ignore: cast_nullable_to_non_nullable
              as String?,
      valueAr: freezed == valueAr
          ? _value.valueAr
          : valueAr // ignore: cast_nullable_to_non_nullable
              as String?,
      def: freezed == def
          ? _value.def
          : def // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ValuesResponseModel implements _ValuesResponseModel {
  const _$_ValuesResponseModel(
      {@JsonKey(name: 'value_en') this.valueEn = '',
      @JsonKey(name: 'value_ar') this.valueAr = '',
      @JsonKey(name: 'default') this.def = true});

  factory _$_ValuesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ValuesResponseModelFromJson(json);

  @override
  @JsonKey(name: 'value_en')
  final String? valueEn;
  @override
  @JsonKey(name: 'value_ar')
  final String? valueAr;
  @override
  @JsonKey(name: 'default')
  final bool? def;

  @override
  String toString() {
    return 'ValuesResponseModel(valueEn: $valueEn, valueAr: $valueAr, def: $def)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValuesResponseModel &&
            (identical(other.valueEn, valueEn) || other.valueEn == valueEn) &&
            (identical(other.valueAr, valueAr) || other.valueAr == valueAr) &&
            (identical(other.def, def) || other.def == def));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, valueEn, valueAr, def);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValuesResponseModelCopyWith<_$_ValuesResponseModel> get copyWith =>
      __$$_ValuesResponseModelCopyWithImpl<_$_ValuesResponseModel>(
          this, _$identity);
}

abstract class _ValuesResponseModel implements ValuesResponseModel {
  const factory _ValuesResponseModel(
      {@JsonKey(name: 'value_en') final String? valueEn,
      @JsonKey(name: 'value_ar') final String? valueAr,
      @JsonKey(name: 'default') final bool? def}) = _$_ValuesResponseModel;

  factory _ValuesResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ValuesResponseModel.fromJson;

  @override
  @JsonKey(name: 'value_en')
  String? get valueEn;
  @override
  @JsonKey(name: 'value_ar')
  String? get valueAr;
  @override
  @JsonKey(name: 'default')
  bool? get def;
  @override
  @JsonKey(ignore: true)
  _$$_ValuesResponseModelCopyWith<_$_ValuesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MeasurementMappingResponseModel _$MeasurementMappingResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MeasurementMappingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MeasurementMappingResponseModel {
  String? get name => throw _privateConstructorUsedError;
  String? get equation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasurementMappingResponseModelCopyWith<MeasurementMappingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementMappingResponseModelCopyWith<$Res> {
  factory $MeasurementMappingResponseModelCopyWith(
          MeasurementMappingResponseModel value,
          $Res Function(MeasurementMappingResponseModel) then) =
      _$MeasurementMappingResponseModelCopyWithImpl<$Res,
          MeasurementMappingResponseModel>;
  @useResult
  $Res call({String? name, String? equation});
}

/// @nodoc
class _$MeasurementMappingResponseModelCopyWithImpl<$Res,
        $Val extends MeasurementMappingResponseModel>
    implements $MeasurementMappingResponseModelCopyWith<$Res> {
  _$MeasurementMappingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? equation = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      equation: freezed == equation
          ? _value.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasurementMappingResponseModelCopyWith<$Res>
    implements $MeasurementMappingResponseModelCopyWith<$Res> {
  factory _$$_MeasurementMappingResponseModelCopyWith(
          _$_MeasurementMappingResponseModel value,
          $Res Function(_$_MeasurementMappingResponseModel) then) =
      __$$_MeasurementMappingResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? equation});
}

/// @nodoc
class __$$_MeasurementMappingResponseModelCopyWithImpl<$Res>
    extends _$MeasurementMappingResponseModelCopyWithImpl<$Res,
        _$_MeasurementMappingResponseModel>
    implements _$$_MeasurementMappingResponseModelCopyWith<$Res> {
  __$$_MeasurementMappingResponseModelCopyWithImpl(
      _$_MeasurementMappingResponseModel _value,
      $Res Function(_$_MeasurementMappingResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? equation = freezed,
  }) {
    return _then(_$_MeasurementMappingResponseModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      equation: freezed == equation
          ? _value.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MeasurementMappingResponseModel
    implements _MeasurementMappingResponseModel {
  const _$_MeasurementMappingResponseModel(
      {this.name = '', this.equation = ''});

  factory _$_MeasurementMappingResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_MeasurementMappingResponseModelFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? equation;

  @override
  String toString() {
    return 'MeasurementMappingResponseModel(name: $name, equation: $equation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasurementMappingResponseModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.equation, equation) ||
                other.equation == equation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, equation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementMappingResponseModelCopyWith<
          _$_MeasurementMappingResponseModel>
      get copyWith => __$$_MeasurementMappingResponseModelCopyWithImpl<
          _$_MeasurementMappingResponseModel>(this, _$identity);
}

abstract class _MeasurementMappingResponseModel
    implements MeasurementMappingResponseModel {
  const factory _MeasurementMappingResponseModel(
      {final String? name,
      final String? equation}) = _$_MeasurementMappingResponseModel;

  factory _MeasurementMappingResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MeasurementMappingResponseModel.fromJson;

  @override
  String? get name;
  @override
  String? get equation;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementMappingResponseModelCopyWith<
          _$_MeasurementMappingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

FabricResponseModel _$FabricResponseModelFromJson(Map<String, dynamic> json) {
  return _FabricResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FabricResponseModel {
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FabricResponseModelCopyWith<FabricResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FabricResponseModelCopyWith<$Res> {
  factory $FabricResponseModelCopyWith(
          FabricResponseModel value, $Res Function(FabricResponseModel) then) =
      _$FabricResponseModelCopyWithImpl<$Res, FabricResponseModel>;
  @useResult
  $Res call({String? name, String? image});
}

/// @nodoc
class _$FabricResponseModelCopyWithImpl<$Res, $Val extends FabricResponseModel>
    implements $FabricResponseModelCopyWith<$Res> {
  _$FabricResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FabricResponseModelCopyWith<$Res>
    implements $FabricResponseModelCopyWith<$Res> {
  factory _$$_FabricResponseModelCopyWith(_$_FabricResponseModel value,
          $Res Function(_$_FabricResponseModel) then) =
      __$$_FabricResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? image});
}

/// @nodoc
class __$$_FabricResponseModelCopyWithImpl<$Res>
    extends _$FabricResponseModelCopyWithImpl<$Res, _$_FabricResponseModel>
    implements _$$_FabricResponseModelCopyWith<$Res> {
  __$$_FabricResponseModelCopyWithImpl(_$_FabricResponseModel _value,
      $Res Function(_$_FabricResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_FabricResponseModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FabricResponseModel implements _FabricResponseModel {
  const _$_FabricResponseModel({this.name = '', this.image = ''});

  factory _$_FabricResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_FabricResponseModelFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? image;

  @override
  String toString() {
    return 'FabricResponseModel(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FabricResponseModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FabricResponseModelCopyWith<_$_FabricResponseModel> get copyWith =>
      __$$_FabricResponseModelCopyWithImpl<_$_FabricResponseModel>(
          this, _$identity);
}

abstract class _FabricResponseModel implements FabricResponseModel {
  const factory _FabricResponseModel(
      {final String? name, final String? image}) = _$_FabricResponseModel;

  factory _FabricResponseModel.fromJson(Map<String, dynamic> json) =
      _$_FabricResponseModel.fromJson;

  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_FabricResponseModelCopyWith<_$_FabricResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MaterialModel _$MaterialModelFromJson(Map<String, dynamic> json) {
  return _MaterialModel.fromJson(json);
}

/// @nodoc
mixin _$MaterialModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'objectId')
  String? get objectId =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'objectId')  @Default('') String? image,
  @JsonKey(name: 'Materials')
  List<MaterialsModel>? get materials => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaterialModelCopyWith<MaterialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialModelCopyWith<$Res> {
  factory $MaterialModelCopyWith(
          MaterialModel value, $Res Function(MaterialModel) then) =
      _$MaterialModelCopyWithImpl<$Res, MaterialModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Image') String? image,
      @JsonKey(name: 'objectId') String? objectId,
      @JsonKey(name: 'Materials') List<MaterialsModel>? materials,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$MaterialModelCopyWithImpl<$Res, $Val extends MaterialModel>
    implements $MaterialModelCopyWith<$Res> {
  _$MaterialModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? objectId = freezed,
    Object? materials = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<MaterialsModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaterialModelCopyWith<$Res>
    implements $MaterialModelCopyWith<$Res> {
  factory _$$_MaterialModelCopyWith(
          _$_MaterialModel value, $Res Function(_$_MaterialModel) then) =
      __$$_MaterialModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Image') String? image,
      @JsonKey(name: 'objectId') String? objectId,
      @JsonKey(name: 'Materials') List<MaterialsModel>? materials,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_MaterialModelCopyWithImpl<$Res>
    extends _$MaterialModelCopyWithImpl<$Res, _$_MaterialModel>
    implements _$$_MaterialModelCopyWith<$Res> {
  __$$_MaterialModelCopyWithImpl(
      _$_MaterialModel _value, $Res Function(_$_MaterialModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? objectId = freezed,
    Object? materials = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_MaterialModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<MaterialsModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MaterialModel implements _MaterialModel {
  const _$_MaterialModel(
      {@JsonKey(name: 'Name') this.name = '',
      @JsonKey(name: 'Image') this.image = '',
      @JsonKey(name: 'objectId') this.objectId = '',
      @JsonKey(name: 'Materials')
      final List<MaterialsModel>? materials = const [],
      this.createdAt = '',
      this.updatedAt = ''})
      : _materials = materials;

  factory _$_MaterialModel.fromJson(Map<String, dynamic> json) =>
      _$$_MaterialModelFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Image')
  final String? image;
  @override
  @JsonKey(name: 'objectId')
  final String? objectId;
// @JsonKey(name: 'objectId')  @Default('') String? image,
  final List<MaterialsModel>? _materials;
// @JsonKey(name: 'objectId')  @Default('') String? image,
  @override
  @JsonKey(name: 'Materials')
  List<MaterialsModel>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;

  @override
  String toString() {
    return 'MaterialModel(name: $name, image: $image, objectId: $objectId, materials: $materials, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, objectId,
      const DeepCollectionEquality().hash(_materials), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialModelCopyWith<_$_MaterialModel> get copyWith =>
      __$$_MaterialModelCopyWithImpl<_$_MaterialModel>(this, _$identity);
}

abstract class _MaterialModel implements MaterialModel {
  const factory _MaterialModel(
      {@JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Image') final String? image,
      @JsonKey(name: 'objectId') final String? objectId,
      @JsonKey(name: 'Materials') final List<MaterialsModel>? materials,
      final String? createdAt,
      final String? updatedAt}) = _$_MaterialModel;

  factory _MaterialModel.fromJson(Map<String, dynamic> json) =
      _$_MaterialModel.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Image')
  String? get image;
  @override
  @JsonKey(name: 'objectId')
  String? get objectId;
  @override // @JsonKey(name: 'objectId')  @Default('') String? image,
  @JsonKey(name: 'Materials')
  List<MaterialsModel>? get materials;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialModelCopyWith<_$_MaterialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MaterialsModel _$MaterialsModelFromJson(Map<String, dynamic> json) {
  return _MaterialsModel.fromJson(json);
}

/// @nodoc
mixin _$MaterialsModel {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaterialsModelCopyWith<MaterialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialsModelCopyWith<$Res> {
  factory $MaterialsModelCopyWith(
          MaterialsModel value, $Res Function(MaterialsModel) then) =
      _$MaterialsModelCopyWithImpl<$Res, MaterialsModel>;
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class _$MaterialsModelCopyWithImpl<$Res, $Val extends MaterialsModel>
    implements $MaterialsModelCopyWith<$Res> {
  _$MaterialsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaterialsModelCopyWith<$Res>
    implements $MaterialsModelCopyWith<$Res> {
  factory _$$_MaterialsModelCopyWith(
          _$_MaterialsModel value, $Res Function(_$_MaterialsModel) then) =
      __$$_MaterialsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class __$$_MaterialsModelCopyWithImpl<$Res>
    extends _$MaterialsModelCopyWithImpl<$Res, _$_MaterialsModel>
    implements _$$_MaterialsModelCopyWith<$Res> {
  __$$_MaterialsModelCopyWithImpl(
      _$_MaterialsModel _value, $Res Function(_$_MaterialsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_MaterialsModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MaterialsModel implements _MaterialsModel {
  const _$_MaterialsModel({this.name = '', this.value = ''});

  factory _$_MaterialsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MaterialsModelFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? value;

  @override
  String toString() {
    return 'MaterialsModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialsModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialsModelCopyWith<_$_MaterialsModel> get copyWith =>
      __$$_MaterialsModelCopyWithImpl<_$_MaterialsModel>(this, _$identity);
}

abstract class _MaterialsModel implements MaterialsModel {
  const factory _MaterialsModel({final String? name, final String? value}) =
      _$_MaterialsModel;

  factory _MaterialsModel.fromJson(Map<String, dynamic> json) =
      _$_MaterialsModel.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialsModelCopyWith<_$_MaterialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
