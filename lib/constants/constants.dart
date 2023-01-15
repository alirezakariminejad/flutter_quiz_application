import 'package:flutter/animation.dart';
import 'package:flutter_quiz_application/data/question.dart';
import 'package:hexcolor/hexcolor.dart';

final Color yellow = HexColor('#ffcc51');
final Color classicBlue = HexColor('#2654a4');
final Color lightGray = HexColor('#ececec');
final Color green = HexColor('#09936f');
final Color black = HexColor('#262103');

List<Question> getQuestionsList() {
  Question firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهورترین شعبده‌باز دنیا چه کسی است؟';
  firstQuestion.imageNumber = '1';
  firstQuestion.correctAnswer = 1;
  firstQuestion.answers = [
    'علیرضا کریمی نژاد',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین',
  ];

  Question secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNumber = '2';
  secondQuestion.correctAnswer = 1;
  secondQuestion.answers = [
    '(شوروی سابق)روسیه',
    'آمریکا',
    'چین',
    'هند',
  ];

  return [firstQuestion, secondQuestion];
}
