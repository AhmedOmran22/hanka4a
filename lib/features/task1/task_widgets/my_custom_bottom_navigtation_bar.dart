
import 'package:flutter/material.dart';
import 'package:hanka4a/features/task1/task_widgets/select_bbottom_navigation_bar_item.dart';

import '../models/navigation_bar_item_model.dart';

class MyCustomBottomNavigationBBar extends StatefulWidget {
  const MyCustomBottomNavigationBBar({super.key});

  @override
  State<MyCustomBottomNavigationBBar> createState() =>
      _MyCustomBottomNavigationBBarState();
}

class _MyCustomBottomNavigationBBarState
    extends State<MyCustomBottomNavigationBBar> {
  int slectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
            spreadRadius: 2,
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            navigationBarItems.asMap().entries.map((e) {
              return GestureDetector(
                onTap: () => setState(() => slectedIndex = e.key),
                child: SelectNavigationBarItem(
                  isSelected: e.key == slectedIndex,
                  navigationBarItemModel: e.value,
                ),
              );
            }).toList(),
      ),
    );
  }
}
