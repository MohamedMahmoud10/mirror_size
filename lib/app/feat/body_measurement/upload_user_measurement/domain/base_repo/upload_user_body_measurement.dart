import 'package:dartz/dartz.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

abstract interface class UploadUserMeasurementBaseRepo {
  Future<Either<Failure, UploadBodyMeasurementResponseEntity>> uploadBodyMeasurement(UploadBodyMeasurementRequestEntity requestEntity);
}
