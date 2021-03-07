import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  _answerQuestion() {
    setState(() {
      _questionIndex++;
      if (_questionIndex >= questions.length) {
        print('No more questions.');
      }
    });
  }

  var questions = [
    {
      'question': 'What is your favourite color?',
      'answers': ['Red', 'Green', 'Blue', 'Yellow']
    },
    {
      'question': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Rabit', 'Fish']
    },
    {
      'question': 'What is your favourite programming language?',
      'answers': ['Python', 'C#', 'Dart', 'JavaScript']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world!'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['question']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
