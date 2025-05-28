import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanka4a/features/api_testing/presentation/cubits/api_product_cubit.dart';
import 'package:hanka4a/features/api_testing/presentation/cubits/api_product_state.dart';
import 'package:hanka4a/features/api_testing/presentation/widgets/api_product_item.dart';

class ApiTestingViewBody extends StatelessWidget {
  const ApiTestingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiProductCubit, ApiProductState>(
      builder: (context, state) {
        if (state is ApiProductLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ApiProductLoaded) {
          return ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return ApiProductItem(product: state.products[index]);
            },
          );
        } else if (state is ApiProductError) {
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(child: Text("Something went wrong!"));
        }
      },
    );
  }
}
