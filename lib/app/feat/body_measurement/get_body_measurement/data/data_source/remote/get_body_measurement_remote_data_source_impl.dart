import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/data/data_source/remote/get_body_measurement_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/data/model/get_body_measurement_response_model.dart';
import 'package:mirror_size/core/api/api_consumer.dart';
import 'package:mirror_size/core/api/app_api.dart';

@LazySingleton(as: GetBodyMeasurementBaseRemoteDataSource)
class GetBodyMeasurementRemoteDataSourceImpl
    implements GetBodyMeasurementBaseRemoteDataSource {
  final ApiConsumer client;

  GetBodyMeasurementRemoteDataSourceImpl({required this.client});

  @override
  Future<List<GetBodyMeasurementResponseModel>> getBodyMeasurement() async {
    final queryParameters = {
      'where': '{"shopify_userId":"7363840540954"}',
    };
    final response = await client.get(path: AppApi.getBodyMeasurementBaseUrl,queryParameters: queryParameters);
    final List<dynamic> responseList = response['results'] as List<dynamic>;
    return List<GetBodyMeasurementResponseModel>.from(
      responseList.map(
        (item) =>
            GetBodyMeasurementResponseModel.fromJson(item as Map<String, dynamic>),
      ),
    );
  }

}
