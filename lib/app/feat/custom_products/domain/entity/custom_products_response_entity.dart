import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_products_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class CustomProductsResponseEntity with _$CustomProductsResponseEntity {
  const factory CustomProductsResponseEntity({
    @Default('') String? objectId,
    @Default('') String? name,
    @Default('') String? gender,
    @Default('') String? createdAt,
    @Default('') String? image,
    @Default('') String? updatedAt,
    @Default([]) List<String>? color,
    @Default([]) List<FabricResponseEntity>? fabric,
    @Default([]) List<MaterialEntity>? material,
    @Default([]) List<PrefrencesResponseEntity>? prefrences,
    @Default([]) List<MeasurementMappingResponseEntity>? measurementMapping,
  }) = _CustomProductsResponseEntity;
}

@Freezed(fromJson: false, toJson: false)
class PrefrencesResponseEntity with _$PrefrencesResponseEntity {
  const factory PrefrencesResponseEntity({
    @Default('') String? name,
    @Default([]) List<String>? type,
    @Default([]) List<ValuesResponseEntity>? values,
    @Default('') String? labelAR,
    @Default('') String? labelEN,
  }) = _PrefrencesResponseEntity;
}

@Freezed(fromJson: false, toJson: false)
class ValuesResponseEntity with _$ValuesResponseEntity {
  const factory ValuesResponseEntity({
    @Default('') String? valueEn,
    @Default('') String? valueAr,
    @Default(true) bool? def,
  }) = _ValuesResponseEntity;
}

@Freezed(fromJson: false, toJson: false)
class MeasurementMappingResponseEntity with _$MeasurementMappingResponseEntity {
  const factory MeasurementMappingResponseEntity({
    @Default('') String? name,
    @Default('') String? equation,
  }) = _MeasurementMappingResponseEntity;
}

@Freezed(fromJson: false, toJson: false)
class FabricResponseEntity with _$FabricResponseEntity {
  const factory FabricResponseEntity({
    @Default('') String? name,
    @Default('') String? image,
  }) = _FabricResponseEntity;
}

@Freezed(fromJson: false, toJson: false)
class MaterialEntity with _$MaterialEntity {
  const factory MaterialEntity({
    @Default('') String? name,
    @Default('') String? image,
    @Default('') String? objectId,
    // @Default('') String? image,
    @Default([]) List<MaterialsEntity>? materials,
    @Default('') String? createdAt,
    @Default('') String? updatedAt,
  }) = _MaterialEntity;
}

@Freezed(fromJson: false, toJson: false)
class MaterialsEntity with _$MaterialsEntity {
  const factory MaterialsEntity({
    @Default('')    String? name,
  @Default('')   String? value,
  }) = _MaterialsEntity;
}
