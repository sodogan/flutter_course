import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

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
      var answerList = (questionList[index]["answers"] as List).map(
        (
          answerList,
        ) {
          return new Answer(
            pressHandler: () => onPressHandler(answerList["score"]),
            title: answerList["answer"],
            score: answerList["score"],
          );
        },
      ).toList();
      print("building the answer list $answerList");
      return answerList;
    };

    return Column(
      children: <Widget>[
        Question(question: question),
        ...answerList(questionIndex),
      ],
    );
  }
}
