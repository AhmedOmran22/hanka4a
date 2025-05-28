import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text(
          "This is the search view !!!!!!!!!!!!!!  ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
