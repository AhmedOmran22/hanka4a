import 'package:flutter/material.dart';
import 'package:hanka4a/features/task1/task_widgets/like_button.dart';
import 'package:hanka4a/features/task1/task_widgets/product_image.dart';

import '../models/product_model.dart';
import 'product_discription_and_price.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});
  final ProdcutModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ProductImage(productModel: productModel),
            const SizedBox(height: 4),
            ProductDiscriptionAndPrice(productModel: productModel),
          ],
        ),
        const Positioned(top: 8, right: 8, child: LikeButton()),
      ],
    );
  }
}
