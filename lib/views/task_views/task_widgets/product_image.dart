import 'package:flutter/material.dart';
import 'package:hanka4a/models/product_model.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.productModel});

  final ProdcutModel productModel;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Image.asset(productModel.image),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(32),
      ),
    );
  }
}
