import 'package:flutter/material.dart';

class ResultPhrase extends StatelessWidget {
  final int finalScore;

  ResultPhrase({required this.finalScore});

  //add logic depending on the score
  String get resultPhrase {
    return "You scored $finalScore points";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      alignment: Alignment.center,
      //color: Colors.indigo,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(12.0),
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Text(
          resultPhrase,
          style: TextStyle(color: Colors.green, fontSize: 24.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
