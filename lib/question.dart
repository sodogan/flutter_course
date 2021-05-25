import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
