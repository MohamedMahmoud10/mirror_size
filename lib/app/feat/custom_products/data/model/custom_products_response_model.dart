import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_products_response_model.freezed.dart';

part 'custom_products_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class CustomProductsResponseModel with _$CustomProductsResponseModel {
  const factory CustomProductsResponseModel({
    @Default('') String? objectId,
    @JsonKey(name: 'Name') @Default('') String? name,
    @JsonKey(name: 'Image') @Default('') String? image,
    @Default('') String? createdAt,
    @Default('') String? updatedAt,
    @JsonKey(name: 'Gender') @Default('') String? gender,
    @JsonKey(name: 'Color') @Default([]) List<String> color,
    @JsonKey(name: 'Material') @Default([]) List<MaterialModel>? material,
    @JsonKey(name: 'Fabric') @Default([]) List<FabricResponseModel>? fabric,
    @JsonKey(name: 'Prefrences')
    @Default([])
    List<PrefrencesResponseModel>? prefrences,
    @JsonKey(name: 'Measurement_Mapping')
    @Default([])
    List<MeasurementMappingResponseModel>? measurementMapping,
  }) = _CustomProductsResponseModel;

  factory CustomProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CustomProductsResponseModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class PrefrencesResponseModel with _$PrefrencesResponseModel {
  const factory PrefrencesResponseModel({
    @JsonKey(name: 'Name') @Default('') String? name,
    @JsonKey(name: 'Type') @Default([]) List<String>? type,
    @JsonKey(name: 'Values') @Default([]) List<ValuesResponseModel>? values,
    @JsonKey(name: 'Label_AR') @Default('') String? labelAR,
    @JsonKey(name: 'Label_EN') @Default('') String? labelEN,
  }) = _PrefrencesResponseModel;

  factory PrefrencesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PrefrencesResponseModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class ValuesResponseModel with _$ValuesResponseModel {
  const factory ValuesResponseModel({
    @JsonKey(name: 'value_en') @Default('') String? valueEn,
    @JsonKey(name: 'value_ar') @Default('') String? valueAr,
    @JsonKey(name: 'Default')  bool? def,
  }) = _ValuesResponseModel;

  factory ValuesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ValuesResponseModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class MeasurementMappingResponseModel with _$MeasurementMappingResponseModel {
  const factory MeasurementMappingResponseModel({
    @Default('') String? name,
    @Default('') String? equation,
  }) = _MeasurementMappingResponseModel;

  factory MeasurementMappingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementMappingResponseModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class FabricResponseModel with _$FabricResponseModel {
  const factory FabricResponseModel({
    @Default('') String? name,
    @Default('') String? image,
  }) = _FabricResponseModel;

  factory FabricResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FabricResponseModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class MaterialModel with _$MaterialModel {
  const factory MaterialModel({
    @JsonKey(name: 'Name') @Default('') String? name,
    @JsonKey(name: 'Image') @Default('') String? image,
    @JsonKey(name: 'objectId') @Default('') String? objectId,
    // @JsonKey(name: 'objectId')  @Default('') String? image,
    @JsonKey(name: 'Materials') @Default([]) List<MaterialsModel>? materials,
    @Default('') String? createdAt,
    @Default('') String? updatedAt,
  }) = _MaterialModel;

  factory MaterialModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class MaterialsModel with _$MaterialsModel {
  const factory MaterialsModel({
 @Default('') String? name,
  @Default('') String? value,
  }) = _MaterialsModel;

  factory MaterialsModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialsModelFromJson(json);
}
