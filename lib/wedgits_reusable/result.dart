//for GetX
import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/constants/constants.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You  are awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 16) {
      resultText = "You are ...Strange?!";
    } else {
      resultText = "You are  so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: kTextResultStyle,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Restart quiz'),
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.white),
          )
        ],
      ),
    );
  }
}
/*

//Flutter Dev
import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_1/constants/constants.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You  are awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 16) {
      resultText = "You are ...Strange?!";
    } else {
      resultText = "You are  so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: kTextResultStyle,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Restart quiz'),
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.white),
          )
        ],
      ),
    );
  }
}
*/
