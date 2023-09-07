import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/get_measurment_size/data/data_source/remote/get_measurement_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/get_measurment_size/data/model/get_measurement_request_model.dart';
import 'package:mirror_size/app/feat/get_measurment_size/data/model/get_measurement_response_model.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';

@LazySingleton(as: GetMeasurementBaseRemoteDataSource)
class GetMeasurementRemoteDataSource
    implements GetMeasurementBaseRemoteDataSource {
  GetMeasurementRemoteDataSource();

  @override
  Future<GetMeasurementResponseModel> getUserMeasurement(
    GetMeasurementRequestEntity requestEntity,
  ) async {
    final url = Uri.parse(
      'https://api.mysize.mirrorsize.com/api/ms_measurement_process',
    );

    final body = GetMeasurementRequestModel(
      userId: requestEntity.userId,
      angle: requestEntity.angle,
      height: requestEntity.height,
      weight: requestEntity.weight,
      age: requestEntity.age,
      gender: requestEntity.gender,
      productName: requestEntity.productName,
      emailId: requestEntity.emailId,
      userName: requestEntity.userName,
      userMobile: requestEntity.userMobile,
      apiKey: requestEntity.apiKey,
      merchantId: requestEntity.merchantId,
      mobileModel: requestEntity.mobileModel,
      fitType: requestEntity.fitType,
      frontImage: requestEntity.frontImage,
      sideImage: requestEntity.sideImage,
    ).toJson();

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        // any other headers the API expects
      },
      body: json.encode(body),
    );
    debugPrint('Thw Body Is $body');
    if (response.statusCode == 200) {
      debugPrint('Request sent successfully');
      debugPrint('Response body: ${response.body}');
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      final responseModel = GetMeasurementResponseModel.fromJson(jsonResponse);
      return responseModel; // Ensure that you return a non-null value here
    } else {
      debugPrint(
        'Request failed: ${response.statusCode} - ${response.reasonPhrase}',
      );
      debugPrint('Response body: ${response.body}');
      throw Exception(
        'Failed to send the request: ${response.statusCode} - ${response.reasonPhrase}',
      );
    }
  }
}
