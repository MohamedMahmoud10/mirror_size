import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/data/data_source/remote/init_user_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/data/model/init_user_request_model.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/data/model/init_user_response_model.dart';
import 'package:mirror_size/core/api/api_consumer.dart';
import 'package:mirror_size/core/api/app_api.dart';
import 'package:mirror_size/core/const/app_strings.dart';

@LazySingleton(as: InitUserBaseRemoteDataSource)
class InitUserRemoteDataSource implements InitUserBaseRemoteDataSource {
  final ApiConsumer client;

  InitUserRemoteDataSource({required this.client});

  @override
  Future<InitUserResponseModel> initUser() async {
    final body = const InitUserRequestModel(
      merchantId: AppString.merchantID,
      productName: AppString.productName,
      apiKey: AppString.apiKey,
      gender: AppString.gender,)
        .toJson();
    try {
      final response = await client.post(
        path: AppApi.mirrorSizeBaseUrl + AppApi.initializeUserEndPoint,
        body: body,
      );
      return InitUserResponseModel.fromJson(response as Map<String, dynamic>);
    } catch (e) {
      debugPrint('Error making network request: $e');
      rethrow;
    }
  }
  }
