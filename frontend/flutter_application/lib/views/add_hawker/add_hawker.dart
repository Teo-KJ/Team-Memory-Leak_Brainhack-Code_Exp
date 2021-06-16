import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/material_dialogs.dart';

class AddHawker extends StatefulWidget {
  const AddHawker({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AddHawker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 184, 39, 37),
            title: Align(alignment: Alignment.center, child: Text('Add a Hawker'))),
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                        width: 300.0,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Name of Stall',
                                )),
                            Padding(padding: EdgeInsets.all(5.0)),
                            Container(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Container(
                        width: 300.0,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Unit Number',
                                )),
                            Padding(padding: EdgeInsets.all(5.0)),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: TextField(
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
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      keyboardType: TextInputType.number),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text('-'),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Container(
                                  height: 40,
                                  width: 110,
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      keyboardType: TextInputType.number),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Container(
                        width: 300.0,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Location of Hawker Centre',
                                )),
                            Padding(padding: EdgeInsets.all(5.0)),
                            Container(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Container(
                        width: 300.0,
                        height: 280,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'About the Hawker',
                                )),
                            Padding(padding: EdgeInsets.all(5.0)),
                            Container(
                              height: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        )),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.red,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
