import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_response_entity.dart';

abstract class GetRecommendationSizeState {}

class GetRecommendationSizeInitialState extends GetRecommendationSizeState {}

class GetRecommendationSizeLoadingState extends GetRecommendationSizeState {}

class GetRecommendationSizeSuccessState extends GetRecommendationSizeState {
  final GetRecommendationMeasurementResponseEntity responseEntity;

  GetRecommendationSizeSuccessState({required this.responseEntity});
}

class GetRecommendationSizeFailState extends GetRecommendationSizeState {
  final String errorState;

  GetRecommendationSizeFailState({required this.errorState});
}
