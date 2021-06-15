import 'package:flutter/material.dart';
import 'package:flutter_application/models/Stall.dart';

class HawkerDetailPage extends StatelessWidget {
  HawkerDetailPage(this.stall);

  final Stall stall;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('Hawker detail')),
      ),
    );
  }
}
