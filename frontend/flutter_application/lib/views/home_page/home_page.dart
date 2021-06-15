import 'package:flutter/material.dart';
import 'package:flutter_application/views/home_page/components/bottom_sheet/bottom_sheet.dart';
import 'package:flutter_application/views/home_page/components/map_view.dart';
import 'package:flutter_application/views/home_page/view_model.dart';
import 'package:flutter_application/views/profile_page/view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageViewModel(),
        child: Scaffold(
            body: Column(children: [
          Expanded(
            child: HomeMapView(),
          ),
          Expanded(
            child: HomePageBottomSheet(),
          )
        ])));
  }
}
