import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite animal?',
        'answerText': ['cat', 'dogs', 'elephant', 'sheeps']
      },
      {
        'questionText': 'Whts\'s your favourite color?',
        'answerText': ['Red', 'Orange', 'Blue', 'Pink']
      },
      {
        'questionText': 'What\'s your favourite city?',
        'answerText': ['Patna', 'Agra', 'Kolkata', 'Delhi']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: const Text('Personality Quiz'),
          backgroundColor: Colors.pink.shade700,
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answerText'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
