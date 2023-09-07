import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_user_request_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class InitUserRequestEntity with _$InitUserRequestEntity {
  const factory InitUserRequestEntity({
    required String apiKey,
    required String merchantId,
    required String productName,
    required String gender,
  }) = _InitUserRequestEntity;
}
