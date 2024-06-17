import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = ["가장 좋아하는 색", "가장 좋아하는 과일"];

  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;  
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("퀴즈 앱"),
        ),
        body: Column(
          children: [
            Text(_questions[_questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("빨강"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("파랑"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("검정"),
            )
          ],
        ),
      ),
    );
  }
}
