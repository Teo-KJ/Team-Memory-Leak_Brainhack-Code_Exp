import 'package:flutter/material.dart';

class ProfilePageTopBar extends StatelessWidget {
  const ProfilePageTopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [backgroundView(context), pointsView(context)],
    );
  }

  Widget pointsContent() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text('500',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 30)),
                Container(
                  width: 12,
                ),
                Text('Points',
                    style:
                        TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16)),
              ],
            )
            // Spacer(),
            // Text('Redeem Now',
            //     style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18))
          ],
        ),
      ),
    );
  }

  Widget pointsView(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(60, 40, 60, 0),
          child: Container(
            height: 100,
            width: 240,
            child: pointsContent(),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget backgroundView(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Color.fromARGB(255, 184, 39, 37),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                        height: 80,
                        width: 80,
                        child: Image.network(
                            'https://icon-library.com/images/doge-icon/doge-icon-28.jpg')),
                  ),
                  Container(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Doge',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text(
                          'Coin',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(height: 100)
        ],
      ),
    );
  }
}
