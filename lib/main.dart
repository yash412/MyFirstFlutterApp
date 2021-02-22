import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex],
              ),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: _answerQuestion,
              ),
            ],
          )),
    );
  }
}
