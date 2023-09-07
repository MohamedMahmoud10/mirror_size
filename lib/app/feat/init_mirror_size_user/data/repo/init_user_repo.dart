import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/data/data_source/remote/init_user_base_remote_data_source.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/data/mapper/init_user_response_mapper.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/base_repo/init_user_base_repo.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/entity/init_user_response_entity.dart';
import 'package:mirror_size/core/error_handler/faliure.dart';

@LazySingleton(as: InitUserBaseRepo)
class InitUserRepo implements InitUserBaseRepo {
  final InitUserBaseRemoteDataSource baseRemoteDataSource;

  InitUserRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, InitUserResponseEntity>> initUser() async {
    try {
      final result = await baseRemoteDataSource
          .initUser();
      return Right(
        InitUserResponseMapper().convert(result),
      );
    } catch (e) {
      return Left(
        UnexpectedFailure(
          e.toString(),
        ),
      );
    }
  }
}
