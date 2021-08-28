//with GetX
import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/controller/myapp_controller.dart';
import 'package:flutter_udemy_project_1/wedgits_reusable/quiz.dart';
import 'package:flutter_udemy_project_1/wedgits_reusable/result.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all
  // "child" routes there.
  final MyAppController c = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz APP With GetX"),
          centerTitle: true,
        ),
        body: Obx(
          () => (c.questionIndex < c.questions.length)
              ? Quiz(
                  questionIndex: c.questionIndex.toInt(),
                  answerQuestion: c.answerQuestion,
                  questions: c.questions,
                )
              : Result(c.totalScore.toInt(), c.resetQuiz),
        ),
      ),
    );
  }
}

/*

import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/wedgits_reusable/quiz.dart';
import 'package:flutter_udemy_project_1/wedgits_reusable/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz(){
    setState(() {
      questionIndex=0;
      totalScore =0;
    });

  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);

    if (questionIndex < questions.length) {
      print("we have mre questions");
    } else {
      print("no more questions");
    }
  }

  var questions = [
    //we create a map  using {} and store key value pair in it
    {
      //key           //value
      'questionText': 'What\'s your favorite color? ',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Black', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite animal? ',
      'answers': [
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Lion', 'score': 6},
        {'text': 'Panda', 'score': 3},
        {'text': 'Peacock', 'score': 2},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite flower? ',
      'answers': [
        {'text': 'Rose', 'score': 2},
        {'text': 'Lotus', 'score': 4},
        {'text': 'Sunflower', 'score': 3},
        {'text': 'Cheery', 'score': 5},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite game? ',
      'answers': [
        {'text': 'Cricket', 'score': 2},
        {'text': 'Football', 'score': 6},
        {'text': 'Chess', 'score': 4},
        {'text': 'Ludo', 'score': 5},
      ],
    },
    {
      //key           //value
      'questionText': 'What\'s your favorite show? ',
      'answers': [
        {'text': 'Games of Throne', 'score': 8},
        {'text': 'Naruto', 'score': 5},
        {'text': 'Bleach', 'score': 4},
        {'text': 'One-Piece', 'score': 3},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz APP"),
          centerTitle: true,
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
              )
            : Result(totalScore,resetQuiz),
      ),
    );
  }
}
*/
