import 'package:flutter/material.dart';

class HomePageBottomSheet extends StatefulWidget {
  const HomePageBottomSheet({Key key}) : super(key: key);

  @override
  _HomePageBottomSheetState createState() => _HomePageBottomSheetState();
}

class _HomePageBottomSheetState extends State<HomePageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This is the home page bottom sheet'),
    );
  }
}
