import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final void Function()? resetHandler;
  final totalScore;

  Result({required this.totalScore, required this.resetHandler});

  get finalScore => totalScore;

  @override
  Widget build(Object context) {
    return Column(
      children: [

        SizedBox(height: 56,),
        Container(
          //width: double.infinity,
          alignment: Alignment.center,
          //color: Colors.indigo,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(12.0),
          child: Padding(padding:EdgeInsets.all(6),   
          child: Text(
            "You scored $finalScore points",
            style: TextStyle(color: Colors.green, fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          ),
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
        Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      ],
    );
  }
}
