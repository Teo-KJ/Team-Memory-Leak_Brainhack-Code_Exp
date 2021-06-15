import 'package:flutter/material.dart';

class VoucherSection extends StatelessWidget {
  const VoucherSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'Here are some recommended vouchers for you to redeem',
            ),
          ),
          Container(
            height: 20,
          ),
          voucherListView()
        ],
      ),
    );
  }

  Widget voucherListView() {
    return Container(
      height: 140,
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        scrollDirection: Axis.horizontal,
        children: [listItem(), listItem(), listItem(), listItem(), listItem()],
      ),
    );
  }

  Widget listItem() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 80,
        width: 160,
        child: Column(
          children: [
            Image.network(
              'https://s3.amazonaws.com/images.giftaway.ph/o/54f2af82-21e0-40a1-b324-86284b524c4b.jpg',
              fit: BoxFit.fill,
              loadingBuilder:
                  (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                        : null,
                  ),
                );
              },
            ),
            Container(
              height: 10,
            ),
            Text('10 points')
          ],
        ),
      ),
    );
  }
}
