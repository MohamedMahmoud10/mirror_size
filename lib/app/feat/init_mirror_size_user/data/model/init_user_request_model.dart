import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_user_request_model.freezed.dart';

part 'init_user_request_model.g.dart';

@Freezed(fromJson: false, toJson: true)
class InitUserRequestModel with _$InitUserRequestModel {
  const factory InitUserRequestModel({
    required String apiKey,
    @JsonKey(name: 'merchantid') required String merchantId,
    @JsonKey(name: 'productname') required String productName,
    required String  gender,
  }) = _InitUserRequestModel;

}
