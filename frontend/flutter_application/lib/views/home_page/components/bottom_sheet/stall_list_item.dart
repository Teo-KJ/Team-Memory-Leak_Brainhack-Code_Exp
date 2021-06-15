import 'package:flutter/material.dart';

class StallListItem extends StatelessWidget {
  const StallListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 120,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.network(
                          'https://cdn.dribbble.com/users/1818193/screenshots/6853143/food_app_1x_zuairia_4x.jpg?compress=1&resize=400x300'),
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
          'Restaurant Name',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Container(
          height: 6,
        ),
        Text(
          'The Address',
          style: TextStyle(color: Colors.black54),
        )
      ],
    );
  }
}
