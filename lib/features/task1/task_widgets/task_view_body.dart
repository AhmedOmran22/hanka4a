import 'package:flutter/material.dart';
import 'package:hanka4a/features/task1/models/category_model.dart';
import 'package:hanka4a/features/task1/models/product_model.dart';
import 'package:hanka4a/features/task1/task_widgets/horizontal_list_view.dart';
import 'package:hanka4a/features/task1/task_widgets/sliver_grid_for_products.dart';
import 'package:hanka4a/features/task1/task_widgets/sliver_row_text.dart';

import 'home_sliver_app_bar.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const HomeSliverAppBar(),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        const SliverRowText(text: 'Categories'),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(
          child: HorizontalListView(categoriesList: categories),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        const SliverRowText(text: 'Flash Sale'),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverGridForProducts(productsList: products),
      ],
    );
  }
}
