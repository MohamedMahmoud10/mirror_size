part of 'custom_product_cubit.dart';

@immutable
abstract class CustomProductState {}

class CustomProductInitial extends CustomProductState {}

class CustomProductLoadingState extends CustomProductState {}

class CustomProductSuccessState extends CustomProductState {
  final List<CustomProductsResponseEntity> customerProductList;

  // final List<String> fabricTypes; // Add this property.
  // final List<String> brands; // Add this property.

  CustomProductSuccessState({required this.customerProductList});
}

class CustomProductFailState extends CustomProductState {
  final String errorState;

  CustomProductFailState({required this.errorState});
}

class CustomProductUpdateUiState extends CustomProductState {
  final String selectedObjectId;

  CustomProductUpdateUiState({required this.selectedObjectId});
}
