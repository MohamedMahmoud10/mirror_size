import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/data/model/get_recommendation_response_model.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_response_entity.dart';

part 'get_recommendation_size_response_mapper.g.dart';

@AutoMappr([
  MapType<GetRecommendationMeasurementResponseModel,
      GetRecommendationMeasurementResponseEntity>(),
  MapType<MeasurementDataModel,
      MeasurementDataEntity>(),
])
class GetRecommendationResponseMapper
    extends $GetRecommendationResponseMapper {}
