import 'package:flutter/material.dart';

class HomeMapView extends StatefulWidget {
  const HomeMapView({Key key}) : super(key: key);

  @override
  _HomeMapViewState createState() => _HomeMapViewState();
}

class _HomeMapViewState extends State<HomeMapView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This is the home map view'),
    );
  }
}
