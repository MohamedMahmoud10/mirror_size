import 'package:dartz/dartz.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

abstract interface class GetRecommendtionBaseRepo {
  Future<Either<Failure, GetRecommendationMeasurementResponseEntity>> getRecommendation(GetRecommendationMeasurementRequestEntity requestEntity);
}
