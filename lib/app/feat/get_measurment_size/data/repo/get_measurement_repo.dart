import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/get_measurment_size/data/data_source/remote/get_measurement_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/get_measurment_size/data/mapper/get_measurement_response_mapper.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/base_repo/get_measurement_base_repo.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/faliure.dart';

@LazySingleton(as: GetMeasurementBaseRepo)
class GetMeasurementRepo implements GetMeasurementBaseRepo {
  final GetMeasurementBaseRemoteDataSource baseRemoteDataSource;

  GetMeasurementRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, GetMeasurementResponseEntity>> getUserMeasurement(
    GetMeasurementRequestEntity requestEntity,
  ) async {
    try {
      final result = await baseRemoteDataSource.getUserMeasurement(
        requestEntity,
      );

      return Right(
        GetMeasurementResponseMapper().convert(result),
      );
    } catch (e) {
      return Left(
        UnexpectedFailure(
          e.toString(),
        ),
      );
    }
  }
}
