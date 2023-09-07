import 'package:mirror_size/app/feat/init_mirror_size_user/data/model/init_user_response_model.dart';

abstract interface class InitUserBaseRemoteDataSource {
  Future<InitUserResponseModel> initUser();
}
