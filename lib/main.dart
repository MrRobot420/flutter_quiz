import 'package:flutter/material.dart';
import 'package:quiz_guide/quiz.dart';
import 'package:quiz_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
    print(_questionIndex);
  }

  final _questions = const [
    {
      'questionText': 'Was ist deine Lieblingsfarbe?',
      'answers': [
        {'text': 'Rot', 'score': 2},
        {'text': 'Gelb', 'score': 3},
        {'text': 'Blau', 'score': 5},
        {'text': 'Grün', 'score': 10}
      ]
    },
    {
      'questionText': 'Was ist dein Lieblingstier?',
      'answers': [
        {'text': 'Hund', 'score': 10},
        {'text': 'Katze', 'score': 1},
        {'text': 'Maus', 'score': 5},
        {'text': 'Adler', 'score': 15}
      ]
    },
    {
      'questionText': 'Wer ist dein Lieblingsdozent?',
      'answers': [
        {'text': 'Denis', 'score': 4},
        {'text': 'Max', 'score': 10},
        {'text': 'Hubert', 'score': 2},
        {'text': 'alex', 'score': 8}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meine erste App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
