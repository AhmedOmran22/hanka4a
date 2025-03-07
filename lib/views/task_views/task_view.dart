import 'package:flutter/material.dart';

import 'task_widgets/task_bottom_navigation_bar.dart';
import 'task_widgets/task_view_body.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: TaskViewBody(),
      ),
      bottomNavigationBar: TaskBottomNavigationBar(),
    );
  }
}
