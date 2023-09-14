import 'package:dartz/dartz.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/index.dart';

abstract interface class GetMeasurementBaseRepo {
  Future<Either<Failure, GetMeasurementResponseEntity>> getUserMeasurement(
      GetMeasurementRequestEntity requestEntity,);
}
