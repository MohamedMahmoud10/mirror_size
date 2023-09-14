import 'package:dartz/dartz.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

abstract interface class CustomProductsBaseRepo {
  Future<Either<Failure,List<CustomProductsResponseEntity>>>getCustomProduct();
}
