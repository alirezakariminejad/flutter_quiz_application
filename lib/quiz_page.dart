import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/constants.dart';
import 'package:flutter_quiz_application/data/question.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  int currentQuestionIndex = 0;
  Question? currentQuestion;
  int? lenthOfQuestionList;

  @override
  Widget build(BuildContext context) {
    currentQuestion = getQuestionsList()[currentQuestionIndex];
    lenthOfQuestionList = getQuestionsList().length;
    String currentQuestionImageIndex =
        getQuestionsList()[currentQuestionIndex].imageNumber!;
    return Scaffold(
      backgroundColor: lightGray,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'سوالات',
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
              image: AssetImage('images/$currentQuestionImageIndex.png'),
              height: 350.0,
            ),
            SizedBox(height: 30.0),
            Text(
              currentQuestion!.questionTitle!,
              style: TextStyle(
                color: classicBlue,
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            ...List.generate(
              4,
              (index) => getOptionsLists(index),
            ),
          ],
        ),
      ),
    );
  }

  Widget getOptionsLists(int index) {
    return ListTile(
      title: Text(
        currentQuestion!.answers![index],
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
      onTap: () {
        // if (currentQuestion!.correctAnswer == index) {
        //   print('currect');
        // } else {
        //   print('wrong');
        // }

        setState(() {
          if (currentQuestionIndex < lenthOfQuestionList! - 1) {
            currentQuestionIndex++;
          }
        });
      },
    );
  }
}
