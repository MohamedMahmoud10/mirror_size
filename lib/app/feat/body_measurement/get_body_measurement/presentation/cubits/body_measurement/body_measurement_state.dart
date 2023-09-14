part of 'body_measurement_cubit.dart';

@immutable
abstract class GetBodyMeasurementState {}

class GetBodyMeasurementInitial extends GetBodyMeasurementState {}
class GetBodyMeasurementLoadingState extends GetBodyMeasurementState {}
class GetBodyMeasurementSuccessState extends GetBodyMeasurementState {
  final List<GetBodyMeasurementResponseEntity>bodyMeasurementList;
  GetBodyMeasurementSuccessState({required  this.bodyMeasurementList});
}
class GetBodyMeasurementFailState extends GetBodyMeasurementState {

  final String errorState ;
  GetBodyMeasurementFailState({required this.errorState});

}
