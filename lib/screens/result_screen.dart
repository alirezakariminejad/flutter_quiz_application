import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/constants.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, this.answerCount = 0});
  int answerCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGray,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
        backgroundColor: bostonUniversityRed,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 60.0),
            Image(
              image: AssetImage('images/cup.png'),
              height: 300.0,
            ),
            SizedBox(height: 30.0),
            Text(
              'پاسخ‌های صحیح شما',
              style: TextStyle(
                fontSize: 20.0,
                // fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0),
            Text(
              '$answerCount',
              style: TextStyle(
                fontSize: 72.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
