import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/base_repo/upload_user_body_measurement.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_response_entity.dart';
import 'package:mirror_size/core/base/base_use_case.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

@lazySingleton
class UploadUserBodyMeasurementuseCase
    implements
        BaseUseCase<UploadBodyMeasurementResponseEntity,
            UploadBodyMeasurementRequestEntity> {
  final UploadUserMeasurementBaseRepo baseRepo;

  UploadUserBodyMeasurementuseCase({required this.baseRepo});

  @override
  Future<Either<Failure, UploadBodyMeasurementResponseEntity>> call(
      UploadBodyMeasurementRequestEntity requestEntity,) {
    return baseRepo.uploadBodyMeasurement(requestEntity);
  }
}
