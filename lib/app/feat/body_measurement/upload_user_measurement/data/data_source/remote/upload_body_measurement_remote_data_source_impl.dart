import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/data_source/remote/upload_body_measurement_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/model/upload_body_measurement_request_model.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/model/upload_body_measurement_response_model.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/core/api/api_consumer.dart';
import 'package:mirror_size/core/api/app_api.dart';

@LazySingleton(as: UploadBodyMeasurementBaseRemoteDataSource)
class UploadBodyMeasurementRemoteDataSourceImpl
    implements UploadBodyMeasurementBaseRemoteDataSource {
  final ApiConsumer client;

  UploadBodyMeasurementRemoteDataSourceImpl({required this.client});

  @override
  Future<UploadBodyMeasurementResponseModel> uploadBodyMeasurement(
      UploadBodyMeasurementRequestEntity requestEntity,
  ) async {
    final bodyData = UploadBodyMeasurementRequestModel(
      shopifyUserId: requestEntity.shopifyUserId,
      internalUserId: requestEntity.internalUserId,
      values: requestEntity.values!
          .map(
            (e) => ValuesModel(
              title: e.title,
              kandoraLength: e.kandoraLength,
              chest: e.chest,
              lowHip: e.lowHip,
              shoulder: e.shoulder,
              wrist: e.wrist,
              measurementType: e.measurementType,
              waist: e.waist,
            ),
          )
          .toList(),
    );
debugPrint('The Send Body Data Is$bodyData');
debugPrint('The Send Body Data Is${bodyData.toJson()}');
    final response = await client.post(
      path: AppApi.uploadBodyMeasurementBaseUrl,
      body: bodyData.toJson(),
    );
    return UploadBodyMeasurementResponseModel.fromJson(
      response as Map<String, dynamic>,
    );
  }
}
