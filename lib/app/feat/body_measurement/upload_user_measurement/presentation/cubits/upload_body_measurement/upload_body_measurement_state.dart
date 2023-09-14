import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_response_entity.dart';

abstract class UploadBodyMeasurementState {}

class UploadBodyMeasurementInitial extends UploadBodyMeasurementState {}

class UploadBodyMeasurementLoadingState extends UploadBodyMeasurementState {}

class UploadBodyMeasurementSuccessState extends UploadBodyMeasurementState {
  final UploadBodyMeasurementResponseEntity responseEntity;

  UploadBodyMeasurementSuccessState({required this.responseEntity});
}

class UploadBodyMeasurementFailState extends UploadBodyMeasurementState {
  final String errorState;

  UploadBodyMeasurementFailState({required this.errorState});
}
