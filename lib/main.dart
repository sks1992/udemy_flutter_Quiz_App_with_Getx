/*//with GetX
import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/myapp_controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all
  // "child" routes there.
 final MyAppController c =Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz APP"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // Use Obx(()=> to update Text() whenever count is changed.
            Obx(() => Text(c.questions[c.questionIndex.toInt()])),
            ElevatedButton(
              onPressed: c.answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () => print("Answer 2 chosen"),
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Answer 3 chosen");
              },
              child: Text("Answer 3"),
            )
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/wedgits_reusable/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = [
    'What\'s your favorite color? ',
    'What\'s your favorite animal? ',
    'What\'s your favorite flower? ',
    'What\'s your favorite game? ',
    'What\'s your favorite show? ',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz APP"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () => print("Answer 2 chosen"),
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Answer 3 chosen");
              },
              child: Text("Answer 3"),
            )
          ],
        ),
      ),
    );
  }
}
