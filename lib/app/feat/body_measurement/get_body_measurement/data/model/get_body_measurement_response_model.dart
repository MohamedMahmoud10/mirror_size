import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_body_measurement_response_model.freezed.dart';

part 'get_body_measurement_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class GetBodyMeasurementResponseModel with _$GetBodyMeasurementResponseModel{
  const factory GetBodyMeasurementResponseModel({
    @Default('') String? objectId,
    @JsonKey(name: 'internal_userId') @Default('') String? internalUserId,
    @JsonKey(name: 'shopify_userId') @Default('') String? shopifyUserId,
    @Default([]) List<GetBodyMeasurementValuesResponseModel>? values,
    @Default('') String? createdAt,
    @Default('') String? updatedAt,
  }) = _GetBodyMeasurementResponseModel;

  factory GetBodyMeasurementResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetBodyMeasurementResponseModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class GetBodyMeasurementValuesResponseModel
    with _$GetBodyMeasurementValuesResponseModel {
  const factory GetBodyMeasurementValuesResponseModel({
    @JsonKey(name: 'internal_userId') @Default([]) List<String>? title,
    @JsonKey(name: 'kandora_length') @Default([]) List<double>? kandoraLength,
    @Default([]) List<double>? chest,
    @JsonKey(name: 'low_hip') @Default([]) List<double>? lowHip,
    @Default([]) List<double>? shoulder,
    @Default([]) List<double>? wrist,
    @Default([]) List<double>? waist,
  }) = _GetBodyMeasurementValuesResponseModel;

  factory GetBodyMeasurementValuesResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GetBodyMeasurementValuesResponseModelFromJson(json);
}
