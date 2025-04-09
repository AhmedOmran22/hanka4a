import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanka4a/api_testing/presentation/cubits/api_product_cubit.dart';
import 'package:hanka4a/api_testing/presentation/widgets/api_testing_view_body.dart';
import 'package:hanka4a/utils/api_service.dart';
import 'package:hanka4a/utils/service_locator.dart';

class ApiTestingView extends StatelessWidget {
  const ApiTestingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiProductCubit(getIt.get<ApiService>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Fake Store Api Testing"),
          centerTitle: true,
        ),
        body: const ApiTestingViewBody(),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              child: const Icon(Icons.refresh, color: Colors.black, size: 32),
              onPressed: () {
                context.read<ApiProductCubit>().getProducts();
              },
            );
          },
        ),
      ),
    );
  }
}
