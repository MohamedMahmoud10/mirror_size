import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_measurement_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetMeasurementResponseEntity with _$GetMeasurementResponseEntity {
  const factory GetMeasurementResponseEntity(
      {required String code,
      required String message,
      userId,
      status,})=_GetMeasurementResponseEntity;
}
