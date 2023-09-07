import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/get_measurment_size/data/model/get_measurement_request_model.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';
part 'get_measurement_request_mapper.g.dart';
@AutoMappr([
  MapType<GetMeasurementRequestEntity,GetMeasurementRequestModel>()
])
class GetMeasurementRequestMapper extends $GetMeasurementRequestMapper{}
