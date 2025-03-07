import 'package:flutter/material.dart';

import 'views/task_views/task_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        primaryColor: const Color(0xffc4e704),
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: const Color(0xffc4e704),
          secondary: Colors.black45,
        ),
      ),
      home: const TaskView(),
    );
  }
}
// this is the fist Task