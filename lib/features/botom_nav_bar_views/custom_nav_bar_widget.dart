import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
    required this.controller,
    this.onTabChange,
  });
  final PersistentTabController controller;
  final ValueChanged<int>? onTabChange;
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navBarItem(0, Icons.home, Icons.home_outlined),
          navBarItem(1, Icons.search, Icons.search_outlined),
          navBarItem(2, Icons.person, Icons.person_outline),
          navBarItem(3, Icons.settings, Icons.settings_outlined),
        ],
      ),
    );
  }

  Widget navBarItem(int index, IconData selectedIcon, IconData unselectedIcon) {
    bool isSelected = widget.controller.index == index;

    return GestureDetector(
      onTap: () {
        widget.controller.jumpToTab(index);
        setState(() {
          widget.onTabChange!(index);
        });
      },
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 300),
        tween: Tween(begin: 1.0, end: isSelected ? 1.1 : 1.0),
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: Icon(
              isSelected ? selectedIcon : unselectedIcon,
              color: isSelected ? Colors.white : Colors.white70, 
              size: isSelected ? 32 : 28, 
            ),
          );
        },
      ),
    );
  }
}
