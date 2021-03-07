import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _func;
  final String _answer;
  Answer(this._func, this._answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answer),
        onPressed: _func,
      ),
    );
  }
}
