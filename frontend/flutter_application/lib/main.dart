import 'package:flutter/material.dart';
import 'package:flutter_application/views/bottom_navigation/bottom_navigation.dart';
import 'package:page_transition/page_transition.dart';
import './QuizQuestions.dart';
import './mainNew.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: home1()
    );
  }
}

class home1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Container(
        child:Center(child:
          ElevatedButton(
            child:Text('Press me'),
              onPressed:() {
              print(QuizQuestions[0]['question']);
              print(QuizQuestions[0]['choices']);
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>
                        MyApp(index: 0, question: QuizQuestions[0]['question'],
                            choices:  QuizQuestions[0]['choices'])));
              }
          )
        )
      )
      ,
    );
  }
}