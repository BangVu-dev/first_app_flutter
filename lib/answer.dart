import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: selectHandler,
          child: Text('Answer 1'),
          style: ElevatedButton.styleFrom(
              onPrimary: Colors.white, primary: Colors.blue)),
    );
  }
}
