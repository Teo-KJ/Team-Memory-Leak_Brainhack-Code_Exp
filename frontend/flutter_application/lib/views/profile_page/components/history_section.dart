import 'package:flutter/material.dart';

class VoucherHistory extends StatelessWidget {
  const VoucherHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 243, 243, 243),
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last Submission',
              style: TextStyle(
                  color: Color.fromARGB(255, 193, 101, 101),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Container(height: 30),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shopee \$10 Voucher',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(height: 12),
                    Text(
                      '15 June 2021',
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '20',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
