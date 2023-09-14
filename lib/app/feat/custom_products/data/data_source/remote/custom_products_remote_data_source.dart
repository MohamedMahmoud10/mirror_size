import 'package:mirror_size/app/feat/custom_products/data/model/custom_products_response_model.dart';

abstract interface class CustomProductsBaseRemoteDataSource {
  Future<List<CustomProductsResponseModel>>getCustomProducts();
}
