import 'package:dartz/dartz.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/entity/get_body_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

abstract interface class GetBodyMeasurementBaseRepo {
  Future<Either<Failure, List<GetBodyMeasurementResponseEntity>>> getBodyMeasurement();
}
