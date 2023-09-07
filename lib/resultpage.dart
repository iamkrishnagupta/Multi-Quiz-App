import 'package:flutter/material.dart';
import 'Home.dart';

class ResultPage extends StatefulWidget {
  ResultPage({required this.score, super.key, required this.name});
  final int score;
  String name;

  @override
  State<ResultPage> createState() => _ResultPageState(score: score, name: name);
}

class _ResultPageState extends State<ResultPage> {
  _ResultPageState({required this.score, required this.name});
  final int score;
  String name;

  @override
  Widget build(BuildContext context) {
    Color mainColor = Colors.indigo;
 

    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35.0,
            ),
            const Text(
              "Hurray!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "You Scored",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Text(
              "${widget.score} Points",
              style: const TextStyle(
                color: Colors.yellowAccent,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Thanks for Playing!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            MaterialButton(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              color: Colors.yellowAccent,
              textColor: Colors.black,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Play Again",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "~ Quiz App ~",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "@Krishna Gupta",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
