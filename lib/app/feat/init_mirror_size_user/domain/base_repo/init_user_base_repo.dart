import 'package:dartz/dartz.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/entity/init_user_response_entity.dart';
import 'package:mirror_size/core/error_handler/faliure.dart';

abstract interface class InitUserBaseRepo {
  Future<Either<Failure,InitUserResponseEntity>>initUser();

}
