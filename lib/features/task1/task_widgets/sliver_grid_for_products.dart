import 'package:flutter/material.dart';
import 'package:hanka4a/features/task1/models/product_model.dart';
import 'package:hanka4a/utils/screen_size.dart';
import 'package:hanka4a/features/task1/task_widgets/product_item.dart';

class SliverGridForProducts extends StatelessWidget {
  const SliverGridForProducts({super.key, required this.productsList});
  final List<ProdcutModel> productsList;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ProductItem(productModel: productsList[index]);
        },
        childCount: productsList.length,
        addAutomaticKeepAlives: true,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio:
            ScreenSize.minSize(context) / (ScreenSize.maxSize(context) * 0.65),
      ),
    );
  }
}
