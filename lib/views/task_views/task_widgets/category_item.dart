import 'package:flutter/material.dart';
import 'package:hanka4a/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        spacing: 4,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 28,
            child: Image.asset(categoryModel.image, height: 32),
          ),
          Text(
            categoryModel.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
