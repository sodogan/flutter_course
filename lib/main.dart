import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/result.dart';
import './quiz.dart';

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
  var _totalScore;
  final _questionList = [
    {
      "question": "What's your favourite color?",
      "answers": [
        {
          "answer": "Red",
          "score": 7,
        },
        {
          "answer": "Green",
          "score": 10,
        },
        {
          "answer": "Blue",
          "score": 6,
        },
      ],
    },
    {
      "question": "What's your favourite animal?",
      "answers": [
        {
          "answer": "Tiger",
          "score": 7,
        },
        {
          "answer": "Elephant",
          "score": 10,
        },
        {
          "answer": "Rabbit",
          "score": 6,
        },
      ],
    },
    {
      "question": "What's your favourite instructor?",
      "answers": [
        {
          "answer": "Max",
          "score": 7,
        },
        {
          "answer": "Max",
          "score": 10,
        },
        {
          "answer": "Max",
          "score": 6,
        },
      ]
    }
  ];

  void _answerQuestion() {
    // _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    //print("Current question index is $_questionIndex");
  }

//reset the quiz!
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //This is to give a certain state at the initialization
  @override
  initState() {
    super.initState();
    // _answer();
  }

//  Function test = ()=>print("$_questionIndex"));

  @override
  Widget build(BuildContext context) {
    final _currentQuestion = _questionIndex < _questionList.length
        ? _questionList[_questionIndex]["question"] as String
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
    return _questionIndex < _questionList.length
        ? Quiz(
            question: _currentQuestion,
            questionIndex: _questionIndex,
            questionList: _questionList,
            pressHandler: () => _answerQuestion(),
          )
        : Result(resetHandler: _resetQuiz,);
  }
}
