import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/constants.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGray,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'کووییز کوویین',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/welcome.png')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200.0, 70.0),
                backgroundColor: green,
                foregroundColor: Colors.white,
                elevation: 5.0,
              ),
              onPressed: () {},
              child: Text(
                'شروع بازی',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
