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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage('images/1.png'),
              height: 350.0,
            ),
            SizedBox(height: 30.0),
            Text(
              'مشهورترین شعبده‌باز دنیا چه کسی است؟',
              style: TextStyle(
                color: classicBlue,
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            ListTile(
              title: Text(
                'پاسخ اول',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ اول',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ اول',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ اول',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
