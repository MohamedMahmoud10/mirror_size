import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_body_measurement_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetBodyMeasurementResponseEntity with _$GetBodyMeasurementResponseEntity {
  const factory GetBodyMeasurementResponseEntity({
    @Default('') String? objectId,
    @Default('') String? internalUserId,
    @Default('') String? shopifyUserId,
    @Default([]) List<GetBodyMeasurementValuesResponseEntity>? values,
    @Default('') String? createdAt,
    @Default('') String? updatedAt,
  }) = _GetBodyMeasurementResponseEntity;
}

@Freezed(fromJson: false, toJson: false)
class GetBodyMeasurementValuesResponseEntity
    with _$GetBodyMeasurementValuesResponseEntity {
  const factory GetBodyMeasurementValuesResponseEntity({
    @Default([]) List<String>? title,
    @Default([]) List<double>? kandoraLength,
    @Default([]) List<double>? chest,
    @Default([]) List<double>? lowHip,
    @Default([]) List<double>? wrist,
    @Default([]) List<double>? shoulder,
    @Default([]) List<double>? waist,
  }) = _GetBodyMeasurementValuesResponseEntity;
}
