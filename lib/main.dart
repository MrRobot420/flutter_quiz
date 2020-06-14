import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length-1) {
      setState(() {
        _questionIndex++;
      });
    }
    print(_questionIndex);
  }

  var questions = [
    'Was ist deine Lieblingsfarbe?',
    'Was ist dein Lieblingstier?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meine erste App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(_questionIndex)),
            RaisedButton(child: Text('Antwort 1'), onPressed: _answerQuestion,),
            RaisedButton(child: Text('Antwort 2'), onPressed: _answerQuestion,),
            RaisedButton(child: Text('Antwort 3'), onPressed: _answerQuestion,)
          ],
        ),
      ),
    );
  }
}
