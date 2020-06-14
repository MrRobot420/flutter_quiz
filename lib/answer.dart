import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String buttonText;
  final Function selectHandler;

  Answer(this.buttonText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(buttonText),
        onPressed: selectHandler,
      ),
    );
  }
}
