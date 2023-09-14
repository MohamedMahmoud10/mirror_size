import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/custom_products/data/data_source/remote/custom_products_remote_data_source.dart';
import 'package:mirror_size/app/feat/custom_products/data/model/custom_products_response_model.dart';
import 'package:mirror_size/core/api/api_consumer.dart';
import 'package:mirror_size/core/api/app_api.dart';

@LazySingleton(as: CustomProductsBaseRemoteDataSource)
class CustomProductsRemoteDataSourceImpl
    implements CustomProductsBaseRemoteDataSource {
  final ApiConsumer client;

  CustomProductsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CustomProductsResponseModel>> getCustomProducts() async {
    final response = await client.get(path: AppApi.customProductBaseUrl);
    final List<dynamic> responseData = response['results'] as List<dynamic>;
    try {
      return List<CustomProductsResponseModel>.from(
        responseData.map(
          (item) => CustomProductsResponseModel.fromJson(
              item as Map<String, dynamic>,),
        ),
      );
    } catch (e) {
      debugPrint('The Error Is $e');
      rethrow;
    }
  }
}
