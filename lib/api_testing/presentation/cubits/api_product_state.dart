import 'package:hanka4a/api_testing/models/api_product_model.dart';

abstract class ApiProductState {}

class ApiProductInitial extends ApiProductState {}

class ApiProductLoading extends ApiProductState {}

class ApiProductLoaded extends ApiProductState {
  final List<ApiProductModel> products;
  ApiProductLoaded({required this.products});
}

class ApiProductError extends ApiProductState {
  final String errMessage;
  ApiProductError( {required this.errMessage,});
}
