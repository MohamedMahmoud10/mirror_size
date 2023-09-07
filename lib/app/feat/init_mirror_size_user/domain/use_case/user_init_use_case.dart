import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/base_repo/init_user_base_repo.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/entity/init_user_response_entity.dart';
import 'package:mirror_size/core/base/base_use_case.dart';
import 'package:mirror_size/core/error_handler/faliure.dart';
@lazySingleton
class UserInitUseCase implements BaseUseCase <InitUserResponseEntity,NoParams>{
  final InitUserBaseRepo baseRepo;
  UserInitUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, InitUserResponseEntity>> call(NoParams params) {
    return baseRepo.initUser();
  }
}
