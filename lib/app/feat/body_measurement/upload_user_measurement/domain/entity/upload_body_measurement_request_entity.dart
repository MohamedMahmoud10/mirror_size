import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_body_measurement_request_entity.freezed.dart';
@Freezed(fromJson: false, toJson: false)
class UploadBodyMeasurementRequestEntity with _$UploadBodyMeasurementRequestEntity {
  const factory UploadBodyMeasurementRequestEntity({
    @Default('') String? internalUserId,
    @Default('') String? shopifyUserId,
    @Default([]) List<ValuesEntity>? values,
  }) = _UploadBodyMeasurementRequestEntity;
}

@Freezed(fromJson: false, toJson: false)
class ValuesEntity with _$ValuesEntity {
  const factory ValuesEntity({
    @Default([]) List<String>? title,
    @Default([]) List<String>? measurementType,
    @Default([]) List<double>? kandoraLength,
    @Default([]) List<double>? chest,
    @Default([]) List<double>? lowHip,
    @Default([]) List<double>? shoulder,
    @Default([]) List<double>? wrist,
    @Default([]) List<double>? waist,
  }) = _ValuesEntity;
}
