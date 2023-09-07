import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_measurement_request_model.freezed.dart';

part 'get_measurement_request_model.g.dart';

@Freezed(fromJson: false, toJson: true)
class GetMeasurementRequestModel with _$GetMeasurementRequestModel {
  const factory GetMeasurementRequestModel({
    required String userId,
    required String angle,
    required String height,
    required String weight,
    required String age,
    required String gender,
    @JsonKey(name: 'productname') required String productName,
    required String emailId,
    required String userName,
    required String userMobile,
    required String apiKey,
    required String frontImage,
    required String sideImage,
    @JsonKey(name: 'merchantid') required String merchantId, // Use lowercase "i"
    @JsonKey(name: 'mobilemodel') required String mobileModel, // Use lowercase "m"
    required String fitType,
  }) = _GetMeasurementRequestModel;
}
