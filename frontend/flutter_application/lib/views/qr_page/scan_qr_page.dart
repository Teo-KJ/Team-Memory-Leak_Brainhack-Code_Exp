import 'package:flutter/material.dart';

class ScanQRPage extends StatefulWidget {
  const ScanQRPage({Key key}) : super(key: key);

  @override
  _ScanQRPageState createState() => _ScanQRPageState();
}

class _ScanQRPageState extends State<ScanQRPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This is the scan qr page'),
    );
  }
}
