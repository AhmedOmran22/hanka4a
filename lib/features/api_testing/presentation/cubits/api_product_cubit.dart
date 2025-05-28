import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanka4a/features/api_testing/models/api_product_model.dart';
import 'package:hanka4a/features/api_testing/presentation/cubits/api_product_state.dart';
import 'package:hanka4a/utils/api_service.dart';
import 'package:hanka4a/utils/failure.dart';

class ApiProductCubit extends Cubit<ApiProductState> {
  ApiProductCubit(this.apiService) : super(ApiProductInitial());
  final ApiService apiService;
  Future<void> getProducts() async {
    emit(ApiProductLoading());
    try {
      final resposne = await apiService.get("products");
      final products =
          (resposne["products"] as List).map((e) => ApiProductModel.fromJson(e)).toList();
      emit(ApiProductLoaded(products: products));
    } catch (e) {
      if (e is ServerFailure) {
        emit(ApiProductError(errMessage: e.errMessage));
      } else {
        emit(ApiProductError(errMessage: e.toString()));
      }
    }
  }
}
