// import 'dart:developer';

// import 'package:flutter/material.dart';

// class CounterWidget extends StatefulWidget {
//   @override
//   const CounterWidget({super.key});
//   _CounterWidgetState createState() => _CounterWidgetState();
// }

// class _CounterWidgetState extends State<CounterWidget> {
//   int counter = 0;

//   @override
//   void initState() {
//     super.initState();
//     log("Create the state for the first time");
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     log("when the dependencies change, for example when the locale changes");
//   }

//   @override
//   Widget build(BuildContext context) {
//     log("UI build");
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text("Counter: $counter", style: const TextStyle(fontSize: 24)),
//         const SizedBox(height: 10),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               counter++;
//             });
//           },
//           child: const Text("Increment"),
//         ),
//       ],
//     );
//   }

//   @override
//   void didUpdateWidget(covariant CounterWidget oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     log(
//       "called when the widget is updated, for example when the parent widget rebuilds",
//     );
//   }

//   @override
//   void deactivate() {
//     log("🗑 deactivate() called: عندما يتم إغلاق الـ Widget");
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     log("🗑 dispose() called: عندما يتم تدمير الـ Widget نهائيًا");
//     super.dispose();
//   }
// }
// // staless widget is a widget doesn't change and it doesnt have a state


// // statful widget is a widget has state and steps to build it 
// // 1- init state
// // 2- didChangeDependencies
// // 3 - build 
// // 4 - did update widget
// // 5 - deactive 
// // 6- dispose 
// //? SetSetate => rebuild the UI in the build method