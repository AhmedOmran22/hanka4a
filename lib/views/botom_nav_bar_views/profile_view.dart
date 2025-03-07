import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text(
          "This is the profile view !!!!!!!!!!!!!!  ",
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
