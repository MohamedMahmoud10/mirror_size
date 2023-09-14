import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_recommendation_measurement_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetRecommendationMeasurementResponseEntity
    with _$GetRecommendationMeasurementResponseEntity {
  const factory GetRecommendationMeasurementResponseEntity({
    @Default(MeasurementDataEntity()) MeasurementDataEntity? measurementData,
    dynamic code,
    @Default('') String? merchantid,
    @Default('') String? message,
    @Default('') String? userId,
  }) = _GetRecommendationMeasurementResponseEntity;
}

@Freezed(fromJson: false, toJson: false)
class MeasurementDataEntity with _$MeasurementDataEntity {
  const factory MeasurementDataEntity({
    @Default('') String? armsLength,
    @Default('') String? chest,
    @Default('') String? frontChestWidth,
    @Default('') String? upperNeck,
    @Default('') String? sleeveLengthFull,
    @Default('') String? stomach,
    @Default('') String? shoulderAcross,
  }) = _MeasurementDataEntity;
}
