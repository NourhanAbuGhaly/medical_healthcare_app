import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  List imge = [
    "doctor1.jpg"
        "doctor2.jpg"
        "doctor3.jpg"
        "doctor4.jpg"
        "doctor5.jpg"
        "doctor6.jpg"
        "doctor1.jpg"
        "doctor2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
