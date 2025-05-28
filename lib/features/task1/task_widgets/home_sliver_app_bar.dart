import 'package:flutter/material.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      expandedHeight: 60,

      floating: true,
      snap: true,
      title: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        leading: const CircleAvatar(radius: 20, child: Icon(Icons.person)),
        title: const Text(
          "Hi Omran ❤️",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: -.1,
          ),
        ),
        subtitle: const Text(
          "How are you ?",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
            letterSpacing: -.1,
          ),
        ),
        trailing: Badge(
          smallSize: 12,
          alignment: Alignment.topRight,
          child: Icon(
            Icons.notifications,
            size: 32,
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
          ),
        ),
      ),
    );
  }
}
