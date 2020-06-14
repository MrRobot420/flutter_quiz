import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print('Antwort gewählt');
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
            Text('Die Frage: '),
            RaisedButton(child: Text('Antwort 1'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Antwort 2'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Antwort 3'), onPressed: answerQuestion,)
          ],
        ),
      ),
    );
  }
}
