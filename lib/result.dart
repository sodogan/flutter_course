import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Column(children: [
      Text(
        "You did it",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      ),
      Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    ]);
  }
}
