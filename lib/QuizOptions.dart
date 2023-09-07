import 'package:flutter/material.dart';
import 'java.dart';
import 'os.dart';
import 'python.dart';
import 'beee.dart';
import 'cpp.dart';
import 'dbms.dart';
import 'dsa.dart';
import 'networking.dart';

class QuizOption extends StatelessWidget {
  const QuizOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color cardColor = Colors.white;
    Color buttonColor = Colors.indigo;

    return GridView.count(
      childAspectRatio: 0.88,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        // OPERATING SYSTEM
        buildQuizContainer(
          context,
          "Operating System",
          "assets/os.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const os()),
            );
          },
          cardColor,
          buttonColor,
        ),

        // DATA STRUCTURE
        buildQuizContainer(
          context,
          "Data Structure",
          "assets/dsa.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const dsa()),
            );
          },
          cardColor,
          buttonColor,
        ),

        // PYTHON
        buildQuizContainer(
          context,
          "Python",
          "assets/python.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const python()),
            );
          },
          cardColor,
          buttonColor,
        ),

        // JAVA
        buildQuizContainer(
          context,
          "Java",
          "assets/java.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const java()),
            );
          },
          cardColor,
          buttonColor,
        ),

        // BEEE
        buildQuizContainer(
          context,
          "BEEE",
          "assets/beee.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const beee()),
            );
          },
          cardColor,
          buttonColor,
        ),

        // C++
        buildQuizContainer(
          context,
          "C++",
          "assets/cpp.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const cpp()),
            );
          },
          cardColor,
          buttonColor,
        ),

        // NETWORKING
        buildQuizContainer(
          context,
          "Networking",
          "assets/networking.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const networking()),
            );
          },
          cardColor,
          buttonColor,
        ),

        // DBMS
        buildQuizContainer(
          context,
          "DBMS",
          "assets/dbms.png",
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => dbms()),
            );
          },
          cardColor,
          buttonColor,
        ),
      ],
    );
  }

  Widget buildQuizContainer(
    BuildContext context,
    String title,
    String imageUrl,
    VoidCallback onTap,
    Color cardColor,
    Color buttonColor,
  ) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 15, top: 10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Play Now",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                imageUrl,
                width: 120,
                height: 120,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
