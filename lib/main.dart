import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/screens/message_screen.dart';
import 'package:medical_healthcare_app/screens/schedule_screen.dart';
import 'package:medical_healthcare_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
