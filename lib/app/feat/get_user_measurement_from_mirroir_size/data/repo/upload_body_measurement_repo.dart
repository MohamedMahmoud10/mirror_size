import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/data/data_source/remote/get_recommendation_size_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/data/mapper/get_recommendation_size_response_mapper.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/base_repo/get_recommendation_base_repo.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_request_entity.dart';
import 'package:mirror_size/app/feat/get_user_measurement_from_mirroir_size/domain/entity/get_recommendation_measurement_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';
import 'package:mirror_size/core/exception/index.dart';

@LazySingleton(as: GetRecommendtionBaseRepo)
class GetRecommendationRepo implements GetRecommendtionBaseRepo {
  final GetRecommendationSizeBaseRemoteDataSource baseRemoteDataSource;

  GetRecommendationRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, GetRecommendationMeasurementResponseEntity>>
  getRecommendation( GetRecommendationMeasurementRequestEntity requestEntity) async {
    final result = await baseRemoteDataSource.getRecommendationSize(requestEntity);
    try {
      return Right(
        GetRecommendationResponseMapper().convert(result),
      );
    } on ServerException catch (e) {
      return Left(UnexpectedFailure(e.toString()));
    }
  }
}
