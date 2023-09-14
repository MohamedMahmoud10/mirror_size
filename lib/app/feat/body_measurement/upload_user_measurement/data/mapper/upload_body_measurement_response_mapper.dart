import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/model/upload_body_measurement_response_model.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_response_entity.dart';

part 'upload_body_measurement_response_mapper.g.dart';

@AutoMappr([
  MapType<UploadBodyMeasurementResponseModel,
      UploadBodyMeasurementResponseEntity>(),
])
class UploadBodyMeasurementResponseMapper
    extends $UploadBodyMeasurementResponseMapper {}
