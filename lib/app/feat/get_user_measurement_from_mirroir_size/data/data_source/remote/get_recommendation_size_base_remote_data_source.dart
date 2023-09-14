import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/data/model/get_recommendation_response_model.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';

abstract interface class GetRecommendationSizeBaseRemoteDataSource {
  Future<GetRecommendationMeasurementResponseModel> getRecommendationSize(
      GetRecommendationMeasurementRequestEntity requestEntity,
  );
}
