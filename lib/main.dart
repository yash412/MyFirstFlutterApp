import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 9},
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 4},
        {'text': 'Pink', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 2},
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 4},
        {'text': 'Tiger', 'score': 8},
      ],
    },
    {
      'questionText': 'What\'s your favourite Game?',
      'answers': [
        {'text': 'GTA', 'score': 1},
        {'text': 'PUBG', 'score': 5},
        {'text': 'CyberPunk', 'score': 8},
        {'text': 'ApexLegend', 'score': 9},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
