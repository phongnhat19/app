import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton(
      {@required this.onPressed, @required this.color, @required this.title});

  final Function onPressed;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 23),
        color: this.color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(this.title),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
        onPressed: this.onPressed);
  }
}
