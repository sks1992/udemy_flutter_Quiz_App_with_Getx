import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/constants/constants.dart';

class Answer extends StatelessWidget {

  final Function selectAnswer;
  final String answerText;

  Answer({this.selectAnswer,this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectAnswer,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
        ),
        child: Text(answerText,style: kTextAnswerStyle,),
      ),
    );
  }
}
