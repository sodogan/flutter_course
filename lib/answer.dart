import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef onPressed = void Function();



class Answer extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;

  Answer({required this.onPressed, required this.title});

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
        onPressed: onPressed,
        child: Text(this.title),
      ),
    );
  }
}
