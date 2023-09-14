import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mirror_size/app/feat/custom_products/domain/base_repo/custom_product_base_repo.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
import 'package:mirror_size/core/base/base_use_case.dart';
import 'package:mirror_size/core/error_handler/index.dart';

@lazySingleton
class GetCustomProductUseCase
    implements BaseUseCase<List<CustomProductsResponseEntity>, NoParams> {
  final CustomProductsBaseRepo baseRepo;

  GetCustomProductUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, List<CustomProductsResponseEntity>>> call(NoParams params) {
    return  baseRepo.getCustomProduct();
  }
}
