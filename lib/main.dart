import 'package:flutter/material.dart';
 import 'splash.dart'; // Import the Splash screen
 import 'study.dart';
import 'solve.dart';
import 'quiz.dart';
import 'play.dart';
import 'progress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(backgroundColor: Colors.white),
      home: const SplashScreen(),
    );
  }
}