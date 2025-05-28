import 'package:flutter/material.dart';

class ActiveBottomNavigationBarItem extends StatefulWidget {
  const ActiveBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  State<ActiveBottomNavigationBarItem> createState() =>
      _ActiveBottomNavigationBarItemState();
}

class _ActiveBottomNavigationBarItemState
    extends State<ActiveBottomNavigationBarItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColor.withAlpha(100),
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(30),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(widget.icon),
              ),
              const SizedBox(width: 4),
              Text(
                widget.text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
