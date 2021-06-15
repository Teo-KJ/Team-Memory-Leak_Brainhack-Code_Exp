import 'package:flutter/material.dart';
import 'package:flutter_application/views/bottom_navigation/bottom_navigation.dart';
import 'package:page_transition/page_transition.dart';
import './QuizQuestions.dart';

class MyApp extends StatefulWidget {
  var index;
  var question;
  var choices;
  MyApp(  {this.index,this.question,this.choices}
      );

  QuizPage createState() => QuizPage();
}

class QuizPage extends State<MyApp> {
  var index;
  var question;
  var choices;
  // This widget is the root of your application.
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  color: Colors.red,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, MediaQuery.of(context).size.height * 0.07, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            'Quiz Time',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Text('Ah Huat Bee Hoon',
                              style: TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(this.question,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isPressed1 = !isPressed1;
                    if (isPressed2) {
                      isPressed2 = !isPressed2;
                    }
                    if (isPressed3) {
                      isPressed3 = !isPressed3;
                    }
                  });
                },
                child: Container(
                  child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: isPressed1 ? Colors.lightBlue : Colors.white,
                      child: Center(
                          child: Flexible(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('a. ',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                    Text(this.choices[0],
                                        style: TextStyle(
                                            fontSize: 23, fontWeight: FontWeight.bold))
                                  ])))),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isPressed2 = !isPressed2;
                    if (isPressed1) {
                      isPressed1 = !isPressed1;
                    }
                    if (isPressed3) {
                      isPressed3 = !isPressed3;
                    }
                  });
                },
                child: Container(
                  child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: isPressed2 ? Colors.lightBlue : Colors.white,
                      child: Center(
                          child: Flexible(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('b. ',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                    Text(this.choices[1],
                                        style: TextStyle(
                                            fontSize: 23, fontWeight: FontWeight.bold))
                                  ])))),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isPressed3 = !isPressed3;
                    if (isPressed2) {
                      isPressed2 = !isPressed2;
                    }
                    if (isPressed1) {
                      isPressed1 = !isPressed1;
                    }
                  });
                },
                child: Container(
                  child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: isPressed3 ? Colors.lightBlue : Colors.white,
                      child: Center(
                          child: Flexible(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('c. ',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                    Text(this.choices[2],
                                        style: TextStyle(
                                            fontSize: 23, fontWeight: FontWeight.bold))
                                  ])))),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      child: const Text('Next'),
                      onPressed: () {
                        print(this.index);
                        print(this.question);
                        print(this.choices);
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft, child: MyApp(index:this.index+1,
                              question: QuizQuestions[this.index+1]['question'],choices:QuizQuestions[this.index+1]['choices'])));
                        /*Navigator.push(
                    context,

                    MaterialPageRoute(builder: (_) => new MyApp()));*/
                      })
                ],
              )
            ])));
  }

  void initState() {
    super.initState();
    index = widget.index;
    question =widget.question;
    choices =widget.choices;
    print(index);
    print(question);
    print(choices);
    //DatabaseReference ref = FirebaseDatabase.instance.reference();
    /*ref.once().then((DataSnapshot snapshot) async {
      print(2234);
      value = snapshot.value;
      print(value);
    });*/
  }
}
