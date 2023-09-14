

import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mirror_size/app/feat/custom_products/data/model/custom_products_response_model.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
part 'custom_product_mapper.g.dart';
@AutoMappr([
  MapType<CustomProductsResponseModel,CustomProductsResponseEntity>(),
  MapType<PrefrencesResponseModel,PrefrencesResponseEntity>(),
  MapType<MeasurementMappingResponseModel,MeasurementMappingResponseEntity>(),
  MapType<FabricResponseModel,FabricResponseEntity>(),
  MapType<ValuesResponseModel,ValuesResponseEntity>(),
  MapType<MaterialModel,MaterialEntity>(),
  MapType<MaterialsModel,MaterialsEntity>(),
])

class CustomProductDataMapper extends $CustomProductDataMapper{}
