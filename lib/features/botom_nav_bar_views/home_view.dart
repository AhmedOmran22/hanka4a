import 'dart:developer';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late TextEditingController controller;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          autovalidateMode: autovalidateMode,
          key: _formKey,
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () async {
                    var date = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      initialDate: DateTime.now(),
                      lastDate: DateTime(DateTime.now().year + 1, 12, 30),
                    );
                    log(date.toString());
                    controller.text = date!.year.toString();
                    setState(() {});
                  },
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    enabled: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: controller,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.date_range, color: Colors.grey),
                        onPressed: () {},
                      ),
                      hintText: "Pick a date",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                child: const Text('Validate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
