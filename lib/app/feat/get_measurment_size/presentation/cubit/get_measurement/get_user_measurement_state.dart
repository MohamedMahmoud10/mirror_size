


import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_response_entity.dart';

abstract class GetUserMeasurementState {}

class GetUserMeasurementInitial extends GetUserMeasurementState {}
class GetUserMeasurementLoadingState extends GetUserMeasurementState {}
class GetUserMeasurementLoadedState extends GetUserMeasurementState {
  final GetMeasurementResponseEntity responseEntity;
  GetUserMeasurementLoadedState({required this.responseEntity});
}

class GetUserMeasurementFailState extends GetUserMeasurementState {
  final String errorState ;
  GetUserMeasurementFailState({required this.errorState});
}
class GetUserMeasurementUpdateUiState extends GetUserMeasurementState {}
