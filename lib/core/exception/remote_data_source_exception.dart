

import 'package:mirror_size/core/exception/server_error_model.dart';

class RemoteDataSourceException implements Exception {
  final ServerErrorModel serverErrorModel;

  RemoteDataSourceException({required this.serverErrorModel});
}
