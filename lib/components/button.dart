import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.color, @required this.title, @required this.onPressed});
  final Color color;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext conteext) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: FlatButton(
          color: color,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
