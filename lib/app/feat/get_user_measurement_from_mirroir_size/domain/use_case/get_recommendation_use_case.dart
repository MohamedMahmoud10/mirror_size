import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/base_repo/get_recommendation_base_repo.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_response_entity.dart';
import 'package:mirror_size/core/base/base_use_case.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

@lazySingleton
class GetRecommendationUseCase
    implements
        BaseUseCase<GetRecommendationMeasurementResponseEntity,
            GetRecommendationMeasurementRequestEntity> {
  final GetRecommendtionBaseRepo baseRepo;

  GetRecommendationUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, GetRecommendationMeasurementResponseEntity>> call(
      GetRecommendationMeasurementRequestEntity requestEntity,) {
    return baseRepo.getRecommendation(requestEntity);
  }
}
