import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_body_measurement_response_model.g.dart';
part 'upload_body_measurement_response_model.freezed.dart';
@Freezed(fromJson: true,toJson: false)
class UploadBodyMeasurementResponseModel with _$UploadBodyMeasurementResponseModel{
  const factory UploadBodyMeasurementResponseModel({


    @Default('')String?objectId,
    @Default('')String?createdAt,
})=_UploadBodyMeasurementResponseModel;
  factory UploadBodyMeasurementResponseModel.fromJson(Map<String,dynamic>json)=>_$UploadBodyMeasurementResponseModelFromJson(json);
}
