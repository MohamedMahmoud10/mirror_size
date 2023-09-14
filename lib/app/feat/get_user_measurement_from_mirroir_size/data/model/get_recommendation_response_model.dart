import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_recommendation_response_model.freezed.dart';

part 'get_recommendation_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class GetRecommendationMeasurementResponseModel
    with _$GetRecommendationMeasurementResponseModel {
  const factory GetRecommendationMeasurementResponseModel({
    @Default(MeasurementDataModel()) MeasurementDataModel? measurementData,
    dynamic code,
    @Default('') String? merchantid,
    @Default('') String? message,
    @Default('') String? userId,
  }) = _GetRecommendationMeasurementResponseModel;

  factory GetRecommendationMeasurementResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GetRecommendationMeasurementResponseModelFromJson(json);
}

@Freezed(fromJson: true, toJson: false)
class MeasurementDataModel with _$MeasurementDataModel {
  const factory MeasurementDataModel({
    @Default('') String? armsLength,
    @Default('') String? chest,
    @Default('') String? frontChestWidth,
    @Default('') String? upperNeck,
    @Default('') String? sleeveLengthFull,
    @Default('') String? stomach,
    @Default('') String? shoulderAcross,
  }) = _MeasurementDataModel;

  factory MeasurementDataModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementDataModelFromJson(json);
}
