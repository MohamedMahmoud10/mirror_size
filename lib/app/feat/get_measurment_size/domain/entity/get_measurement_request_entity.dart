import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_measurement_request_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetMeasurementRequestEntity with _$GetMeasurementRequestEntity {
  const factory GetMeasurementRequestEntity({
    required String userId,
    required String angle,
    required String height,
    required String weight,
    required  String age,
    required String gender,
    required String productName,
    required String emailId,
    required String userName,
    required String userMobile,
    required String apiKey,
    required String frontImage,
    required String sideImage,
    required  String merchantId,
    required String mobileModel,
    required String fitType,
  }) = _GetMeasurementRequestEntity;
}
