import 'package:flutter/material.dart';

class TaskBottomNavigationBar extends StatefulWidget {
  const TaskBottomNavigationBar({super.key});
  @override
  State<TaskBottomNavigationBar> createState() =>
      _TaskBottomNavigationBarState();
}

class _TaskBottomNavigationBarState extends State<TaskBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
            spreadRadius: 2,
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() => selectedIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.primary.withAlpha(100),
                ),
                child: const Icon(Icons.home, color: Colors.black, size: 24),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: 'catalog',
              activeIcon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.primary.withAlpha(100),
                ),
                child: const Icon(Icons.search, color: Colors.black, size: 24),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              label: 'Cart',
              activeIcon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.primary.withAlpha(100),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite_border),
              label: 'favorites',
              activeIcon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.primary.withAlpha(100),
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'profile',
              activeIcon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.primary.withAlpha(100),
                ),
                child: const Icon(Icons.person, color: Colors.black, size: 24),
              ),
            ),
          ],
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
