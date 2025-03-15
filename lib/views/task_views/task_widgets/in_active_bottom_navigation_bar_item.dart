import 'package:flutter/material.dart';
class InActiveBottomNavigationBarIcon extends StatelessWidget {
  const InActiveBottomNavigationBarIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: Colors.black);
  }
}