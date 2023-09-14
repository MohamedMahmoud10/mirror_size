import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/data/data_source/remote/get_recommendation_size_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/data/model/get_recommendation_request_model.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/data/model/get_recommendation_response_model.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';
import 'package:mirror_size/core/api/api_consumer.dart';
import 'package:mirror_size/core/api/app_api.dart';

@LazySingleton(as: GetRecommendationSizeBaseRemoteDataSource)
class GetRecommendationDataSource
    implements GetRecommendationSizeBaseRemoteDataSource {
  final ApiConsumer client;

  GetRecommendationDataSource({required this.client});

  @override
  Future<GetRecommendationMeasurementResponseModel> getRecommendationSize(
    GetRecommendationMeasurementRequestEntity requestEntity,
  ) async {
    final body = GetRecommendationMeasurementRequestModel(
      apiKey: requestEntity.apiKey,
      apparelName: requestEntity.apparelName,
      brandName: requestEntity.brandName,
      gender: requestEntity.gender,
      merchantId: requestEntity.merchantId,
      productName: requestEntity.productName,
      userId: requestEntity.userId,
    ).toJson();
    final response = await client.post(
      path: AppApi.uploadBodyMeasurementToMirrorSizeBaseUrl,
      body: body,
    );
    return GetRecommendationMeasurementResponseModel.fromJson(
      response as Map<String, dynamic>,
    );
  }
}
