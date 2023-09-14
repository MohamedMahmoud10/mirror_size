import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/custom_products/data/data_source/remote/custom_products_remote_data_source.dart';
import 'package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart';
import 'package:mirror_size/app/feat/custom_products/domain/base_repo/custom_product_base_repo.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
import 'package:mirror_size/core/error_handler/failure.dart';

@LazySingleton(as: CustomProductsBaseRepo)
class CustomProductRepo implements CustomProductsBaseRepo {
  final CustomProductsBaseRemoteDataSource baseRemoteDataSource;

  const CustomProductRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, List<CustomProductsResponseEntity>>>
      getCustomProduct() async {
    try {
      final result = await baseRemoteDataSource.getCustomProducts();
      return Right(CustomProductDataMapper().convertList(result));
    } catch (e) {
      return Future.value(
        Left(
          UnexpectedFailure(
            e.toString(),
          ),
        ),
      );
    }
  }
}
