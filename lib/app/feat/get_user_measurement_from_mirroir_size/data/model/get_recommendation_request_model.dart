import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_recommendation_request_model.freezed.dart';
part 'get_recommendation_request_model.g.dart';

@Freezed(fromJson:false, toJson: true)
class GetRecommendationMeasurementRequestModel
    with _$GetRecommendationMeasurementRequestModel {
  const factory GetRecommendationMeasurementRequestModel({
    @Default('') String? apiKey,
    @JsonKey(name: 'apparelName') @Default('') String? apparelName,
    @JsonKey(name: 'brandName') @Default('') String? brandName,
    @Default('') String? gender,
    @JsonKey(name: 'merchantid') @Default('') String? merchantId,
    @JsonKey(name: 'productname') @Default('') String? productName,
    @Default('') String? userId,
  }) = _GetRecommendationMeasurementRequestModel;
}
