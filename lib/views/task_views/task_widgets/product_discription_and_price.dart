import 'package:flutter/material.dart';
import 'package:hanka4a/models/product_model.dart';

class ProductDiscriptionAndPrice extends StatelessWidget {
  const ProductDiscriptionAndPrice({super.key, required this.productModel});

  final ProdcutModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: productModel.discountedPrice + r"$" + "  ",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: productModel.price + r"$",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey,
                  decorationThickness: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
