import 'package:flutter/material.dart';
import 'package:hanka4a/models/navigation_bar_item_model.dart';
import 'package:hanka4a/views/task_views/task_widgets/active_bottom_navigation_bar_item.dart';
import 'package:hanka4a/views/task_views/task_widgets/in_active_bottom_navigation_bar_item.dart';

class SelectNavigationBarItem extends StatelessWidget {
  const SelectNavigationBarItem({
    super.key,
    required this.isSelected,
    required this.navigationBarItemModel,
  });

  final bool isSelected;
  final NavigationBarItemModel navigationBarItemModel;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveBottomNavigationBarItem(
          text: navigationBarItemModel.title,
          icon: navigationBarItemModel.activeIcon,
        )
        : InActiveBottomNavigationBarIcon(
          icon: navigationBarItemModel.inactiveIcon,
        );
  }
}
