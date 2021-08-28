
//for GetX
import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/controller/myapp_controller.dart';
import 'package:flutter_udemy_project_1/wedgits_reusable/question.dart';
import 'package:get/get.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
        @required this.answerQuestion,
        @required this.questionIndex});

  final MyAppController c = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Use Obx(()=> to update Text() whenever count is changed.
        Obx(
              () => Question(c.questions[c.questionIndex.toInt()]['questionText']),
        ),
        // ... this is Spread operator =:> what  these three dotes do here
        // is they take a list and pull all the value in the list out of it
        // and add the to the surrounding list as individual values. So we
        //don't add a list to a list but the values of a list, having only
        // one list without a nested list.
        ...(c.questions[c.questionIndex.toInt()]['answers'] as List<Map<String, Object>>).map((answers){
          return Answer(selectAnswer:() => c.answerQuestion(answers['score']),answerText: answers['text'],);
        }).toList()
      ],
    ) ;
  }
}
/*

//Flutter dev
import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/wedgits_reusable/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          // ... this is Spread operator =:> what  these three dotes do here
          // is they take a list and pull all the value in the list out of it
          // and add the to the surrounding list as individual values. So we
          //don't add a list to a list but the values of a list, having only
          // one list without a nested list.
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answers) {
            return Answer(
              selectAnswer: () => answerQuestion(answers['score']),
              answerText: answers['text'],
            );
          }).toList()
        ],
      ),
    );
  }
}
*/
