import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddHawker extends StatefulWidget {
  const AddHawker({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AddHawker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[

          Padding(padding: EdgeInsets.all(45.0)),

          Container(
            child:
              Align(
                alignment: Alignment.center,
                child: Column(children: [

                  Container(
                      width: 300.0,
                      child: Column(children: [

                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Name of Stall',
                            )
                        ),

                        Padding(padding: EdgeInsets.all(5.0)),

                        Container(
                          height: 40,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],)
                  ),

                  Padding(padding: EdgeInsets.all(5.0)),

                  Container(
                      width: 300.0,
                      child: Column(children: [

                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Unit Number',
                            )
                        ),

                        Padding(padding: EdgeInsets.all(5.0)),

                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '#',
                                  fillColor: Colors.grey[350],
                                  filled: true,
                                ),
                              ),
                            ),

                            Container(
                              height: 40,
                              width: 110,
                              child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number
                              ),
                            ),

                            Padding(padding: EdgeInsets.all(5.0)),

                            Text('-'),

                            Padding(padding: EdgeInsets.all(5.0)),

                            Container(
                              height: 40,
                              width: 110,
                              child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number
                              ),
                            ),

                          ],
                        ),

                      ],)
                  ),

                  Padding(padding: EdgeInsets.all(5.0)),

                  Container(
                      width: 300.0,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Location of Hawker Centre',
                            )
                        ),

                        Padding(padding: EdgeInsets.all(5.0)),

                        Container(
                          height: 40,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],)
                  ),

                  Padding(padding: EdgeInsets.all(5.0)),

                  Container(
                      width: 300.0,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'About the Hawker',
                            )
                        ),

                        Padding(padding: EdgeInsets.all(5.0)),

                        Container(
                          height: 200,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),

                          ),
                        ),

                      ],)

                  ),

                ],),

              ),

              ),

        ],
        )

    );
  }
}
