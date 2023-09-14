import 'package:bloc/bloc.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/use_case/upload_user_body_measurement_use_case.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/cubits/upload_body_measurement/upload_body_measurement_state.dart';

class UplaodBodyMeasurementCubit extends Cubit<UploadBodyMeasurementState> {
  UplaodBodyMeasurementCubit({required this.useCase})
      : super(UploadBodyMeasurementInitial());
  final UploadUserBodyMeasurementuseCase useCase;

  Future<void> getUserBodyMeasurement(
      UploadBodyMeasurementRequestEntity requestEntity,
  ) async {
    final result = await useCase.call(requestEntity);
    result.fold(
      (l) => emit(
        UploadBodyMeasurementFailState(
          errorState: l.message.toString(),
        ),
      ),
      (r) => emit(
        UploadBodyMeasurementSuccessState(responseEntity: r),
      ),
    );
  }
}
