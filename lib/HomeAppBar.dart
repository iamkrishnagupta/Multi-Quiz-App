import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color appBarColor = Colors.indigo;
    Color iconColor = Colors.white;

    return Container(
      color: appBarColor,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: iconColor,
              size: 28,
            ),
            onPressed: () {
              // Add functionality for the menu icon here
            },
          ),
          const SizedBox(width: 10),
          Text(
            "Quizzes",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: iconColor,
              size: 28,
            ),
            onPressed: () {
              // Add functionality for the notifications icon here
            },
          ),
        ],
      ),
    );
  }
}
