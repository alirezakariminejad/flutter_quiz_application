import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/constants.dart';

class Quizpage extends StatelessWidget {
  const Quizpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGray,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'صفحه شروع بازی',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: classicBlue,
        foregroundColor: yellow,
      ),
      body: SafeArea(
        child: Text('Quiz page'),
      ),
    );
  }
}
