import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/data/model/init_user_response_model.dart';
import 'package:mirror_size/app/feat/init_mirror_size_user/domain/entity/init_user_response_entity.dart';
part 'init_user_response_mapper.g.dart';
@AutoMappr([
  MapType<InitUserResponseModel,InitUserResponseEntity>()
])

class InitUserResponseMapper extends $InitUserResponseMapper{}
