import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/base_repo/get_body_measurement_base_repo.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/entity/get_body_measurement_response_entity.dart';
import 'package:mirror_size/core/base/base_use_case.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

@lazySingleton
class GetBodyMeasurementUseCase
    implements BaseUseCase<List<GetBodyMeasurementResponseEntity>, NoParams> {
  final GetBodyMeasurementBaseRepo baseRepo;

  GetBodyMeasurementUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, List<GetBodyMeasurementResponseEntity>>> call(NoParams params) {
    return baseRepo.getBodyMeasurement();
  }
}
