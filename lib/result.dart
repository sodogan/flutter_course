import 'package:flutter/material.dart';
import 'package:flutter_course/resultPhrase.dart';

class Result extends StatelessWidget {
  //voidCallback can also be used here
  final void Function()? resetHandler;
  final totalScore;

  Result({required this.totalScore, required this.resetHandler});

  int get finalScore => totalScore;

  @override
  Widget build(Object context) {
    return Column(
      children: [
        SizedBox(
          height: 56,
        ),
        ResultPhrase(
          finalScore: finalScore,
        ),
        Container(
          child: TextButton(
            onPressed: resetHandler,
            child: Text(
              "Reset Quiz",
              style: TextStyle(fontSize: 26),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                Colors.blue,
              ),
            ),
          ),
        ),
        Container(
          child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          alignment: Alignment.center,
          padding: EdgeInsets.all(12),
        ),
      ],
    );
  }
}
