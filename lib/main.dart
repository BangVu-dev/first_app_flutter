import 'package:flutter/material.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who is the most handsome man in the world?',
      'What\'s your name?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Answer question!'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: null, child: Text('Answer 1')),
            ElevatedButton(onPressed: null, child: Text('Answer 1')),
          ],
        ),
      ),
    );
  }
}
