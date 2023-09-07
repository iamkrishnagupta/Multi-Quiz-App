import 'package:flutter/material.dart';

import 'Home.dart';
import 'splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash': (context) => const SplashScreen(),
      'Home': (context) => const HomePage(),
    },
  ));
}
