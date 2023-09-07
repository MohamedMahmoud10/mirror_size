import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/base_repo/get_measurement_base_repo.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_response_entity.dart';
import 'package:mirror_size/core/base/base_use_case.dart';
import 'package:mirror_size/core/error_handler/faliure.dart';
@lazySingleton
class UserMeasurementUseCase implements BaseUseCase<GetMeasurementResponseEntity,GetMeasurementRequestEntity>{
  final GetMeasurementBaseRepo baseRepo;
  UserMeasurementUseCase({required this.baseRepo});
  @override
  Future<Either<Failure, GetMeasurementResponseEntity>> call(GetMeasurementRequestEntity params) {
   return baseRepo.getUserMeasurement(params);
  }


}
