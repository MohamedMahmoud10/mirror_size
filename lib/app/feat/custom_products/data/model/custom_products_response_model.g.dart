// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomProductsResponseModel _$$_CustomProductsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomProductsResponseModel(
      objectId: json['objectId'] as String? ?? '',
      name: json['Name'] as String? ?? '',
      image: json['Image'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      gender: json['Gender'] as String? ?? '',
      color:
          (json['Color'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      material: (json['Material'] as List<dynamic>?)
              ?.map((e) => MaterialModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fabric: (json['Fabric'] as List<dynamic>?)
              ?.map((e) =>
                  FabricResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      prefrences: (json['Prefrences'] as List<dynamic>?)
              ?.map((e) =>
                  PrefrencesResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      measurementMapping: (json['Measurement_Mapping'] as List<dynamic>?)
              ?.map((e) => MeasurementMappingResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

_$_PrefrencesResponseModel _$$_PrefrencesResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PrefrencesResponseModel(
      name: json['Name'] as String? ?? '',
      type:
          (json['Type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      values: (json['Values'] as List<dynamic>?)
              ?.map((e) =>
                  ValuesResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      labelAR: json['Label_AR'] as String? ?? '',
      labelEN: json['Label_EN'] as String? ?? '',
    );

_$_ValuesResponseModel _$$_ValuesResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ValuesResponseModel(
      valueEn: json['value_en'] as String? ?? '',
      valueAr: json['value_ar'] as String? ?? '',
      def: json['Default'] as bool?,
    );

_$_MeasurementMappingResponseModel _$$_MeasurementMappingResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MeasurementMappingResponseModel(
      name: json['name'] as String? ?? '',
      equation: json['equation'] as String? ?? '',
    );

_$_FabricResponseModel _$$_FabricResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_FabricResponseModel(
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
    );

_$_MaterialModel _$$_MaterialModelFromJson(Map<String, dynamic> json) =>
    _$_MaterialModel(
      name: json['Name'] as String? ?? '',
      image: json['Image'] as String? ?? '',
      objectId: json['objectId'] as String? ?? '',
      materials: (json['Materials'] as List<dynamic>?)
              ?.map((e) => MaterialsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

_$_MaterialsModel _$$_MaterialsModelFromJson(Map<String, dynamic> json) =>
    _$_MaterialsModel(
      name: json['name'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );
