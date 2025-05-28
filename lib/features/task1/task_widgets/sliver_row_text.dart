import 'package:flutter/material.dart';

class SliverRowText extends StatelessWidget {
  const SliverRowText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        spacing: 8,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          const Text(
            "See All",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
