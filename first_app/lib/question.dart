import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
        ),
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        this.text,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
