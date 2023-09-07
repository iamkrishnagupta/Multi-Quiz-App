import 'dart:async';
import 'package:flutter/material.dart';
import 'loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Decorative element, like a vector graphic or an icon
            Icon(
              Icons.question_mark_outlined,
              color: Colors.white,
              size: 55.0,
            ),

            SizedBox(height: 25),

            // Your app name with custom font and style
            Text(
              'Quiz App',
              style: TextStyle(
                fontFamily: 'YourCustomFont',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 30),

            // Subtitle or additional information
            CircularProgressIndicator(
              color: Color.fromARGB(227, 255, 255, 255),
            ),
          ],
        ),
      ),
    );
  }
}
