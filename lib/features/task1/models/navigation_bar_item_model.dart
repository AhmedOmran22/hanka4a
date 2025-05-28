import 'package:flutter/material.dart';

class NavigationBarItemModel {
  final IconData inactiveIcon;
  final IconData activeIcon;
  final String title;

  NavigationBarItemModel({
    required this.inactiveIcon,
    required this.activeIcon,
    required this.title,
  });
}

List<NavigationBarItemModel> navigationBarItems = [
  NavigationBarItemModel(
    inactiveIcon: Icons.home_outlined,
    activeIcon: Icons.home,
    title: 'Home',
  ),
  NavigationBarItemModel(
    inactiveIcon: Icons.search_outlined,
    activeIcon: Icons.search,
    title: 'Search',
  ),
  NavigationBarItemModel(
    inactiveIcon: Icons.person_outline,
    activeIcon: Icons.person,
    title: 'Profile',
  ),
  NavigationBarItemModel(
    inactiveIcon: Icons.settings_outlined,
    activeIcon: Icons.settings,
    title: 'Settings',
  ),
];
