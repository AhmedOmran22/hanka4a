// import 'package:flutter/material.dart';
// import 'package:hanka4a/views/widgets/example_view_body.dart';

// class ExampleView extends StatefulWidget {
//   const ExampleView({super.key});

//   @override
//   State<ExampleView> createState() => _ExampleViewState();
// }

// class _ExampleViewState extends State<ExampleView> {
//   bool showCounter = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Stateful Widget Lifecycle")),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (showCounter) const CounterWidget(),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 showCounter = !showCounter;
//               });
//             },
//             child: Text(showCounter ? "Remove Counter" : "Add Counter"),
//           ),
//           // MyWidget(
//           //   userModel: UserModel(
//           //     name: "name",
//           //     gmail: "asdjas",
//           //     phoneNumber: "02135214356",
//           //     location: "asads",
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
