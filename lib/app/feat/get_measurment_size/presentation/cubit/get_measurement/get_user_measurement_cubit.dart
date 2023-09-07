import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/use_case/user_measurement_use_case.dart';
import 'package:mirror_size/app/feat/get_measurment_size/presentation/cubit/get_measurement/get_user_measurement_state.dart';
class GetUserMeasurementCubit extends Cubit<GetUserMeasurementState> {
  GetUserMeasurementCubit({required this.useCase})
      : super(GetUserMeasurementInitial());
  final UserMeasurementUseCase useCase;
  String userName = '';
  String userAge = '';
  String userHeight = '';
  String userWeight = '';

  void updateUserInput({
    required String userName,
    required String userAge,
    required String userHeight,
    required String userWeight,
  }) {
    this.userName = userName;
    this.userAge = userAge;
    this.userHeight = userHeight;
    this.userWeight = userWeight;

    emit(GetUserMeasurementUpdateUiState());
  }

  Future<void> uploadToMirrorSize(GetMeasurementRequestEntity requestEntity) async {
    emit(GetUserMeasurementLoadingState());
    final result = await useCase.call(requestEntity);
    result.fold(
      (l) {
        debugPrint('The Error Is ${l.message}');
        emit(
          GetUserMeasurementFailState(
            errorState: l.message.toString(),
          ),
        );
      } ,
      (r) => emit(
        GetUserMeasurementLoadedState(responseEntity: r),
      ),
    );
  }
}
