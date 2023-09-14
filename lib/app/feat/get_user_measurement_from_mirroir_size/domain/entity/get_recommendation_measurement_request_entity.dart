import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_recommendation_measurement_request_entity.freezed.dart';
@Freezed(fromJson: false, toJson: false)



class GetRecommendationMeasurementRequestEntity with _$GetRecommendationMeasurementRequestEntity {
  const factory GetRecommendationMeasurementRequestEntity({
    @Default('') String? apiKey,
    @Default('') String? apparelName,
    @Default('') String? brandName,
    @Default('') String? gender,
    @Default('') String? merchantId,
    @Default('') String? productName,
    @Default('') String? userId,
  }) = _GetRecommendationMeasurementRequestEntity;
}

