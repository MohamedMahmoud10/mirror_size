import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_body_measurement_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class UploadBodyMeasurementResponseEntity with _$UploadBodyMeasurementResponseEntity{
  const factory UploadBodyMeasurementResponseEntity({


    @Default('')String?objectId,
    @Default('')String?createdAt,
})=_UploadBodyMeasurementResponseEntity;
}