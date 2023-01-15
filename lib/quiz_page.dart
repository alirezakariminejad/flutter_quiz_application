import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/constants.dart';
import 'package:flutter_quiz_application/data/question.dart';
import 'package:flutter_quiz_application/screens/result_screen.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  int currentQuestionIndex = 0;
  Question? currentQuestion;
  int? lenthOfQuestionList;
  bool isFinalAnswerSubmitted = false;
  int correctAnswerCount = 0;

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
          'سوال ${currentQuestionIndex + 1} از ${lenthOfQuestionList}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
        backgroundColor: classicBlue,
        foregroundColor: yellow,
      ),
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage('images/$currentQuestionImageIndex.png'),
              height: 300.0,
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
            SizedBox(height: 15.0),
            ...List.generate(
              4,
              (index) => getOptionsLists(index),
            ),
            SizedBox(height: 60.0),
            if (isFinalAnswerSubmitted) showResultButton()
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
        if (currentQuestion!.correctAnswer == index) {
          correctAnswerCount++;
          print('currect');
        } else {
          print('wrong');
        }

        if (currentQuestionIndex == lenthOfQuestionList! - 1) {
          isFinalAnswerSubmitted = true;
        }

        setState(() {
          if (currentQuestionIndex < lenthOfQuestionList! - 1) {
            currentQuestionIndex++;
          }
        });
      },
    );
  }

  Widget showResultButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150.0, 50.0),
        backgroundColor: bostonUniversityRed,
        foregroundColor: Colors.white,
        elevation: 5.0,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                ResultScreen(answerCount: correctAnswerCount)));
      },
      child: Text(
        'مشاهده نتیجه',
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
