import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/data_source/remote/upload_body_measurement_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/mapper/upload_body_measurement_response_mapper.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/base_repo/upload_user_body_measurement.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';
import 'package:mirror_size/core/exception/index.dart';

@LazySingleton(as: UploadUserMeasurementBaseRepo)
class UploadBodyMeasurementRepo implements UploadUserMeasurementBaseRepo {
  final UploadBodyMeasurementBaseRemoteDataSource baseRemoteDataSource;

  UploadBodyMeasurementRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, UploadBodyMeasurementResponseEntity>>
  uploadBodyMeasurement( UploadBodyMeasurementRequestEntity requestEntity) async {
    final result = await baseRemoteDataSource.uploadBodyMeasurement(requestEntity);
    try {
      return Right(
        UploadBodyMeasurementResponseMapper().convert(result),
      );
    } on ServerException catch (e) {
      return Left(UnexpectedFailure(e.toString()));
    }
  }
}
