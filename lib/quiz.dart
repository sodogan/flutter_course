import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final int questionIndex;
  final List questionList;
  final Function onPressHandler;

  Quiz({
    required this.question,
    required this.questionIndex,
    required this.questionList,
    required this.onPressHandler,
  });

  @override
  Widget build(BuildContext context) {
    List<Answer> Function(int) answerList = (index) {
      var answerList =
          (questionList[index]["answers"] as List).map((answerList,) {
        return new Answer(
            pressHandler:()=>onPressHandler(answerList["score"]), 
            title: answerList["answer"],
            score:answerList["score"] ,);
      },).toList();
      print("building the answer list $answerList");
      return answerList;
    };

   


    return Column(
      children: <Widget>[
        Container(
          //width: double.infinity,
          alignment: Alignment.center,
          color: Colors.indigo,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(12.0),
          child: Padding(
            padding: EdgeInsets.all(6),
            child: Text(
              this.question,
              style: TextStyle(color: Colors.green, fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ...answerList(questionIndex),
      ],
    );
  }
}
