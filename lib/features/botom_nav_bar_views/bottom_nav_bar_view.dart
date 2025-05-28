import 'package:flutter/material.dart';
import 'package:hanka4a/features/botom_nav_bar_views/home_view.dart';
import 'package:hanka4a/features/botom_nav_bar_views/profile_view.dart';
import 'package:hanka4a/features/botom_nav_bar_views/search_view.dart';
import 'package:hanka4a/features/botom_nav_bar_views/settings_view.dart';
import 'package:hanka4a/features/botom_nav_bar_views/custom_nav_bar_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  late PersistentTabController _controller;
  int selectedIndex = 0;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[selectedIndex],
      bottomNavigationBar: CustomNavigationBar(
        controller: _controller,
        onTabChange: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );

    // return PersistentTabView.custom(
    //   context,
    //   backgroundColor: Colors.white,
    //   margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
    //   customWidget: CustomNavigationBar(controller: _controller),
    //   itemCount: 4,
    //   animationSettings: const NavBarAnimationSettings(
    //     screenTransitionAnimation: ScreenTransitionAnimationSettings(
    //       animateTabTransition: true,
    //       screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
    //     ),
    //   ),
    //   screens: [
    //     const CustomNavBarScreen(screen: HomeView()),
    //     const CustomNavBarScreen(screen: SearchView()),
    //     const CustomNavBarScreen(screen: ProfileView()),
    //     const CustomNavBarScreen(screen: SettingsView()),
    //   ],
    //   controller: _controller,
    // );
  }

  List<Widget> views = [
    const HomeView(),
    const SearchView(),
    const ProfileView(),
    const SettingsView(),
  ];
}
