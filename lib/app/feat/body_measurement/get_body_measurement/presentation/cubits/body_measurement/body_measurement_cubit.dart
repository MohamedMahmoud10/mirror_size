import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/entity/get_body_measurement_response_entity.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/use_case/get_body_measurement_use_case.dart';
import 'package:mirror_size/core/base/base_use_case.dart';

part 'body_measurement_state.dart';

class GetBodyMeasurementCubit extends Cubit<GetBodyMeasurementState> {
  GetBodyMeasurementCubit({required this.useCase})
      : super(GetBodyMeasurementInitial());
  final GetBodyMeasurementUseCase useCase;

  Future<void> getUserBodyMeasurement() async {
    final result = await useCase.call(NoParams());
    result.fold(
      (l) => emit(
        GetBodyMeasurementFailState(
          errorState: l.message.toString(),
        ),
      ),
      (r) => emit(
        GetBodyMeasurementSuccessState(bodyMeasurementList: r),
      ),
    );
  }
}
