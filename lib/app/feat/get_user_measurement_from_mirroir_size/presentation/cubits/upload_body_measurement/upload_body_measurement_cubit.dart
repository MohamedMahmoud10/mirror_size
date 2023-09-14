import 'package:bloc/bloc.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/use_case/get_recommendation_use_case.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/presentation/cubits/upload_body_measurement/upload_body_measurement_state.dart';

class GetRecommendationCubit extends Cubit<GetRecommendationSizeState> {
  GetRecommendationCubit({required this.useCase})
      : super(GetRecommendationSizeInitialState());
  final GetRecommendationUseCase useCase;

  Future<void> getUserBodyMeasurement(
      GetRecommendationMeasurementRequestEntity requestEntity,
  ) async {
    final result = await useCase.call(requestEntity);
    result.fold(
      (l) => emit(
        GetRecommendationSizeFailState(
          errorState: l.message.toString(),
        ),
      ),
      (r) => emit(
        GetRecommendationSizeSuccessState(responseEntity: r),
      ),
    );
  }
}
