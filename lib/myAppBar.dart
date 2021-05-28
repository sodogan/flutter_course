import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/main.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  //final Widget child;

  @override
  Size get preferredSize => Size.fromHeight(height);

  const MyAppBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: new Text(
          "Sample Quiz",
          style: TextStyle(fontSize: 26, color: Colors.blue),
        ),
      ),
      backgroundColor: Colors.cyan,
      actions: [
        Container(
          child: ElevatedButton(
              child: new Icon(
                Icons.refresh,
                color: Colors.amber,
              ),
              onPressed: () {
                print("Appbar button pressed");
              }),
          color: Colors.amber,
        ),
      ],
    );
  }
}
