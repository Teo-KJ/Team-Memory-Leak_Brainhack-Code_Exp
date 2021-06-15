import 'package:flutter/material.dart';
import 'package:flutter_application/models/Stall.dart';
import 'package:flutter_application/views/hawker_detail/hawker_detail_page.dart';

class StallListItem extends StatelessWidget {
  StallListItem({this.stall});
  final Stall stall;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HawkerDetailPage(stall),
        ));
      },
      child: Container(
          height: 120,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.network(stall.imgURLs[0]),
                      Container(width: 12),
                      Expanded(child: descriptionSection()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              Divider()
            ],
          )),
    );
  }

  Widget descriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.stall.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Container(
          height: 6,
        ),
        Text(
          this.stall.address,
          style: TextStyle(color: Colors.black54),
        )
      ],
    );
  }
}
