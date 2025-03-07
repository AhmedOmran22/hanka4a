import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hanka4a/models/category_model.dart';
import 'package:hanka4a/views/task_views/task_widgets/category_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key, required this.categoriesList});
  final List<CategoryModel> categoriesList;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double maxSize = max(screenWidth, screenHeight);
    return SizedBox(
      height: maxSize * .12,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: categoriesList[index]);
        },
        itemCount: categoriesList.length,
      ),
    );
  }
}
