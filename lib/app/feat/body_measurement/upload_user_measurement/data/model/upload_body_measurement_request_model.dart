import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_body_measurement_request_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UploadBodyMeasurementRequestModel {
  @JsonKey(name: 'internal_userId')
  final String? internalUserId;

  @JsonKey(name: 'shopify_userId')
  final String? shopifyUserId;
  final List<ValuesModel>? values;

  const UploadBodyMeasurementRequestModel({
    required this.shopifyUserId,
    required this.internalUserId,
    required this.values,
  });

  factory UploadBodyMeasurementRequestModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UploadBodyMeasurementRequestModelFromJson(json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      if (shopifyUserId != null && shopifyUserId!.isNotEmpty)
        'shopify_userId': shopifyUserId,
      if (internalUserId != null && internalUserId!.isNotEmpty)
        'internal_userId': internalUserId,
      if (values != null)
        'values': values!.map((receiver) => receiver.toJson()).toList(),
    };
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class ValuesModel {
  final List<String>? title;

  @JsonKey(name: 'Measurement_type')
  final List<String>? measurementType;

  @JsonKey(name: 'kandora_length')
  final List<double>? kandoraLength;
  final List<double>? chest;
  @JsonKey(name: 'low_hip')
  final List<double>? lowHip;
  final List<double>? shoulder;
  final List<double>? wrist;
  final List<double>? waist;

  const ValuesModel({
    required this.title,
    required this.kandoraLength,
    required this.chest,
    required this.lowHip,
    required this.shoulder,
    required this.wrist,
    required this.measurementType,
    required this.waist,
  });

  factory ValuesModel.fromJson(Map<String, dynamic> json) =>
      _$ValuesModelFromJson(json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      if (title != null && title!.isNotEmpty) 'title': title,
      if (kandoraLength != null && kandoraLength!.isNotEmpty)
        'kandora_length': kandoraLength,
      if (chest != null && chest!.isNotEmpty) 'chest': chest,
      if (lowHip != null && lowHip!.isNotEmpty) 'low_hip': lowHip,
      if (shoulder != null && shoulder!.isNotEmpty) 'shoulder': shoulder,
      if (wrist != null && wrist!.isNotEmpty) 'wrist': wrist,
      if (measurementType != null && measurementType!.isNotEmpty)
        'Measurement_type': measurementType,
      if (waist != null && waist!.isNotEmpty) 'waist': waist,
    };
    return data;
  }
}
