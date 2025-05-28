import 'package:flutter/material.dart';
import 'package:hanka4a/features/task1/task_widgets/my_custom_bottom_navigtation_bar.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: CustomPaint(
            child: const ChildWidget(),
            // foregroundPainter: DemoForegroundPainter(),
            painter: DemoPainter(),
          ),
        ),
      ),
      bottomNavigationBar: const MyCustomBottomNavigationBBar(),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,

      child: const Icon(Icons.shop_2_outlined, color: Colors.cyan, size: 32),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    var paint =
        Paint()
          ..color = Colors.cyan
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.0;
    var startAngle = 1.0;
    var sweepAngle = 1.0;
    var useCenter = false;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
