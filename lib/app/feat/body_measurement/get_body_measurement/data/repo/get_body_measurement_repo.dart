import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/data/data_source/remote/get_body_measurement_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/data/mapper/get_body_measurement_mapper.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/base_repo/get_body_measurement_base_repo.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/entity/get_body_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';
import 'package:mirror_size/core/exception/index.dart';

@LazySingleton(as: GetBodyMeasurementBaseRepo)
class BodyMeasurementRepo implements GetBodyMeasurementBaseRepo {
  final GetBodyMeasurementBaseRemoteDataSource baseRemoteDataSource;

  BodyMeasurementRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, List<GetBodyMeasurementResponseEntity>>>
  getBodyMeasurement() async {
    final result = await baseRemoteDataSource.getBodyMeasurement();
    try {
      return Right(
        GetBodyMeasurementMapper().convertList(result),
      );
    } on ServerException catch (e) {
      return Left(UnexpectedFailure(e.toString()));
    }
  }
}
