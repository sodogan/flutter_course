import 'package:flutter/material.dart';

class Result extends StatelessWidget {

 final void Function()? resetHandler;

 Result({required this.resetHandler});

  @override
  Widget build(Object context) {
    return Column(children: [
      Container(
        child: Text(
          "You did it",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        alignment: Alignment.center,
      ),
      Container(
        child: TextButton(onPressed: resetHandler,
        child: Text("Reset Quiz", style: TextStyle(fontSize: 26),),
        style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue,),),
        ),
      ),
      Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      ],);
  }
}
