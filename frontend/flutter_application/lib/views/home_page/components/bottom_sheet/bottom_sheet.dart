import 'package:flutter/material.dart';
import 'package:flutter_application/views/home_page/components/bottom_sheet/stall_list_item.dart';
import 'package:flutter_application/views/profile_page/view_model.dart';
import 'package:provider/provider.dart';

import '../../view_model.dart';

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
    return Consumer<HomePageViewModel>(
      builder: (context, viewModel, child) {
        return ListView(
          padding: EdgeInsets.all(0),
          children: viewModel.stalls
              .map((e) => StallListItem(
                    stall: e,
                  ))
              .toList(),
        );
      },
    );
  }
}
