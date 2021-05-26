import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/result.dart';
import './quiz.dart';
import './constants.dart';

void main() {
  runApp(MyMainApp());
}

class MyMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyScaffold());
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Center(
          child: new Text("Sample Quiz"),
        ),
        backgroundColor: Colors.cyan,
        actions: [
          ElevatedButton(
              child: new Text("Reset"),
              onPressed: () {
                print("Appbar button pressed");
              }),
        ],
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Current question index is $_questionIndex");
  }

//reset the quiz!
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(
        "Resetting the quiz to score: $_totalScore and index $_questionIndex");
  }

  get totalScore => _totalScore;

  //This is to give a certain state at the initialization
  /*
  @override
  initState() {
    //super.initState();
    // _answer();
  }
*/
//  Function test = ()=>print("$_questionIndex"));

  @override
  Widget build(BuildContext context) {
    final _currentQuestion = _questionIndex < Constants.questionList.length
        ? Constants.questionList[_questionIndex]["question"] as String
        : "";

/* Another possible way is if inside the Column!
    return Column(
        children: _questionIndex < _questions.length
            ? <Widget>[
                Question(
                  question: _currentQuestion,
                ),
                ...answerList(_questionIndex)
              ]
            : <Widget>[
                Result(),
              ]);
  */
    return _questionIndex < Constants.questionList.length
        ? Quiz(
            question: _currentQuestion,
            questionIndex: _questionIndex,
            questionList: Constants.questionList,
            onPressHandler: _answerQuestion,
          )
        : Result(
            resetHandler: _resetQuiz,
            totalScore: totalScore,
          );
  }
}
