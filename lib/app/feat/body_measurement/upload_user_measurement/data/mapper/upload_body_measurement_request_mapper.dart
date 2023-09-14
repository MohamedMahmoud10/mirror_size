import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/data/model/upload_body_measurement_request_model.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/domain/entity/upload_body_measurement_request_entity.dart';
part 'upload_body_measurement_request_mapper.g.dart';
@AutoMappr([


  MapType< UploadBodyMeasurementRequestEntity, UploadBodyMeasurementRequestModel>(),
  MapType<ValuesEntity,ValuesModel>()
])
class UploadBodyMeasurementRequestMapper extends $UploadBodyMeasurementRequestMapper{}
