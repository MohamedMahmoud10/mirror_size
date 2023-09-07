import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/get_measurment_size/data/model/get_measurement_response_model.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_response_entity.dart';
part 'get_measurement_response_mapper.g.dart';
@AutoMappr([
  MapType<GetMeasurementResponseModel,GetMeasurementResponseEntity>()
])
class GetMeasurementResponseMapper extends $GetMeasurementResponseMapper{}
