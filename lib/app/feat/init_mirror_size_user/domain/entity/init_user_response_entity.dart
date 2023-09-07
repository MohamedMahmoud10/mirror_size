import 'package:freezed_annotation/freezed_annotation.dart';
part 'init_user_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class InitUserResponseEntity with _$InitUserResponseEntity{

  const factory InitUserResponseEntity({
    required String code,
    required String message,
    required String userId,

  })=_InitUserResponseEntity;
}
