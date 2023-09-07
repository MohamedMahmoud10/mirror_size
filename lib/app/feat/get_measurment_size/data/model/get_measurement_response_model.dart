import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_measurement_response_model.freezed.dart';
part 'get_measurement_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class GetMeasurementResponseModel with _$GetMeasurementResponseModel{

  const factory GetMeasurementResponseModel({


    required String code,
    required String message,
    userId,
    status,
})=_GetMeasurementResponseModel;
  factory GetMeasurementResponseModel.fromJson(Map<String,dynamic>json)=>_$GetMeasurementResponseModelFromJson(json);
}
