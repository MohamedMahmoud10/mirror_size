import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/data/model/get_body_measurement_response_model.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/entity/get_body_measurement_response_entity.dart';
part 'get_body_measurement_mapper.g.dart';
@AutoMappr([


  MapType<GetBodyMeasurementResponseModel,GetBodyMeasurementResponseEntity>(),
  MapType<GetBodyMeasurementValuesResponseModel,GetBodyMeasurementValuesResponseEntity>()
])
class GetBodyMeasurementMapper extends $GetBodyMeasurementMapper{}
