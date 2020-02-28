import 'package:flutter/material.dart';
import 'package:my_flutter/answer.dart';
import 'package:my_flutter/question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      "questionText": "what's up?",
      "answers": ["Well", "Bad", "So so"]
    },
    {
      "questionText": "What's time?",
      "answers": ["12:00", "12:30", "I Don't Care"]
    }
  ];
  var _questionIndex = 0;

  void _onQuestionAnswer() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar -ის ტექსტი'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]["questionText"]),
            ...(_questions[_questionIndex]["answers"] as List<String>)
                .map((answerItem) {
              return Answer(_onQuestionAnswer, answerItem);
            }).toList(),
            Container(
              child: RaisedButton(
                color: Colors.green,
                hoverColor: Colors.greenAccent,
                child: Text('Submit'),
                onPressed: _onQuestionAnswer,
              ),
              margin: EdgeInsets.only(top: 20),
            )
          ],
        ),
      ),
    );
  }
}
