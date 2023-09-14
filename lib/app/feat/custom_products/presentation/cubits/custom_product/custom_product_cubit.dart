import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
import 'package:mirror_size/app/feat/custom_products/domain/use_case/get_custom_product_use_case.dart';
import 'package:mirror_size/core/base/base_use_case.dart';

part 'custom_product_state.dart';

class CustomProductCubit extends Cubit<CustomProductState> {
  CustomProductCubit({required this.useCase}) : super(CustomProductInitial());
  final GetCustomProductUseCase useCase;
  String fetchKandoraObjectId = '';


  void fetchKandoraObjectIdAndUpdateUi({required String objectId}) {
    fetchKandoraObjectId = objectId;
    debugPrint('Fetched ObjectId Is : $fetchKandoraObjectId');
    debugPrint('Fetched ObjectId Is : $objectId');
  }

  Future<void> getCustomerProduct() async {
    final result = await useCase.call(NoParams());
    result.fold(
      (l) => emit(
        CustomProductFailState(
          errorState: l.message.toString(),
        ),
      ),
      (r) => emit(
        CustomProductSuccessState(customerProductList: r),
      ),
    );
  }
}
