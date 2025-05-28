import 'package:flutter/material.dart';
import 'package:hanka4a/features/api_testing/presentation/views/api_testing_view.dart';
import 'package:hanka4a/utils/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetit();
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
      home: const ApiTestingView(),
    );
  }
}
