import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_user_response_model.freezed.dart';

part 'init_user_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class InitUserResponseModel with _$InitUserResponseModel {
  const factory InitUserResponseModel({
    required String code,
    required String message,
    required String  userId,
  }) = _InitUserResponseModel;

  factory InitUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InitUserResponseModelFromJson(json);
}
