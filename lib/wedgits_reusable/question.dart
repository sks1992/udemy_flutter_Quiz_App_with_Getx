import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/constants/constants.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: kTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
