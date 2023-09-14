import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/data/model/get_body_measurement_response_model.dart';

abstract interface class GetBodyMeasurementBaseRemoteDataSource {

  Future<List<GetBodyMeasurementResponseModel>>getBodyMeasurement();

}
