import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/model/upload_body_measurement_response_model.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';

abstract interface class UploadBodyMeasurementBaseRemoteDataSource {
  Future<UploadBodyMeasurementResponseModel> uploadBodyMeasurement(
      UploadBodyMeasurementRequestEntity requestEntity,
  );
}
