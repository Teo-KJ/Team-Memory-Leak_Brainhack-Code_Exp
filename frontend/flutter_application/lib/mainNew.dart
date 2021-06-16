import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/views/bottom_navigation/bottom_navigation.dart';
import 'package:page_transition/page_transition.dart';
import './QuizQuestions.dart';
import 'package:fluttertoast/fluttertoast.dart';


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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[

                                 Padding(
                                   padding: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                     child:Image.asset('assets/images/questionicon3.jpg',
                          height: 120,
                          width: 70,)),
                        SizedBox(width:10),
                        Column(
                        children: [

                          Text(
                            'Quiz Time',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.006),
                          Text('Ah Huat Bee Hoon',
                              style: TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      )]))),
              Stack(
                  alignment:Alignment.topCenter,
                  children:<Widget>[
              Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      alignment: Alignment.topLeft,
                      image: AssetImage('assets/images/hawker.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)
                      )
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          border: Border.all(width: 1,color: Colors.black54),

                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),

                      child:Padding(
                        padding: EdgeInsets.all(20),
                          child:Text(this.question,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)))))]),
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
              SizedBox(height:20),
              Row(
                children: <Widget>[
                  Spacer(),
                  SizedBox(width:30),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                          border: Border.all(width: 1,color: Colors.cyanAccent),

                          borderRadius: BorderRadius.all(
                            Radius.circular(200),
                          )),
                      child:Padding(
                        padding: EdgeInsets.all(6),
                          child:Center(child:Row(children:<Widget>[
                  Text('${this.index+1}',
                  style:TextStyle(color: Colors.redAccent,fontSize: 22)),
                  Text('/5',style:TextStyle(fontSize:22))])))),
                  SizedBox(width:MediaQuery.of(context).size.width*0.23),
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child:ElevatedButton(
                      child: this.index==4? Text('Submit'):Text('Next'),
                      onPressed: () {
                        print(this.index);
                        print(this.question);
                        print(this.choices);
                        if (this.index<4){
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft, child: MyApp(index:this.index+1,
                              question: QuizQuestions[this.index+1]['question'],choices:QuizQuestions[this.index+1]['choices'])));}
                        else{
                          showToast();
                        }
                        /*Navigator.push(
                    context,

                    MaterialPageRoute(builder: (_) => new MyApp()));*/
                      })),

                ],
              ),

        SizedBox(height:20),
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

  void showToast() {
    Fluttertoast.showToast(
        msg: 'Congrats you have earned 25 points!',

        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
}
