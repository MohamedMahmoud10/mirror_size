import 'package:mirror_size/app/feat/get_measurment_size/data/model/get_measurement_response_model.dart';
import 'package:mirror_size/app/feat/get_measurment_size/domain/entity/get_measurement_request_entity.dart';

abstract interface class GetMeasurementBaseRemoteDataSource{
  Future<GetMeasurementResponseModel>getUserMeasurement(GetMeasurementRequestEntity requestEntity);
}
