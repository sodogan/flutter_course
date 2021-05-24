import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef pressHandler = void Function();

class Answer extends StatelessWidget {
  final void Function() pressHandler;
  final String title;
  final int score;

  Answer({
    required this.pressHandler,
    required this.title,
    required this.score,
  });

  int get currentScore => this.score;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width * 0.65;

    return Container(
      color: Colors.white,
      width: _width,
      height: 50,
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(3),
      child: ElevatedButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        onPressed: pressHandler,
        child: Text(this.title),
      ),
    );
  }
}
