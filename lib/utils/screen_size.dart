import 'dart:math';
import 'package:flutter/material.dart';

abstract class ScreenSize {
  static double minSize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return min(width, height);
  }

  static double maxSize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return max(width, height);
  }
}
