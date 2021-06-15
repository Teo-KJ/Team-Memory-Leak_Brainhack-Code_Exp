import 'package:flutter/material.dart';
import 'package:flutter_application/views/home_page/components/bottom_sheet/stall_list_item.dart';

class HomePageBottomSheet extends StatefulWidget {
  const HomePageBottomSheet({Key key}) : super(key: key);

  @override
  _HomePageBottomSheetState createState() => _HomePageBottomSheetState();
}

class _HomePageBottomSheetState extends State<HomePageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Nearby Stalls',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
          Divider(),
          Expanded(child: hawkerListView())
        ],
      ),
    );
  }

  Widget hawkerListView() {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [1, 2, 3, 4, 5, 6, 7].map((e) => StallListItem()).toList(),
    );
  }
}
