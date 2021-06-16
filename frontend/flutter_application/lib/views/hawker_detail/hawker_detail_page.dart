import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/models/Stall.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HawkerDetailPage extends StatelessWidget {
  HawkerDetailPage(this.stall);

  final Stall stall;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''), backgroundColor: Color.fromARGB(255, 184, 39, 37)),
      body: mainView(),
    );
  }

  Widget mainView() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 20),
          imagesView(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              titleView(),
              Container(height: 10),
              Divider(),
              Container(height: 10),
              informationView(),
              Divider(),
              historyView()
            ]),
          )
        ],
      ),
    );
  }

  Widget historyView() {
    String someHistory = """
${stall.name} was founded in 1965. It was started by Mr Lim who specialised in cooking. His stall was popular in the Jurong community and soon attracted people from all over Singapore too.
    """;
    TextStyle titleStyle = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 184, 39, 37));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 20),
        Text(
          'Background Information',
          style: titleStyle,
        ),
        Container(
          height: 12,
        ),
        Text(someHistory),
      ],
    );
  }

  Widget informationView() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      informationRow(Icon(Icons.pin_drop, size: 36), stall.address),
      Container(height: 20),
      informationRow(Icon(Ionicons.ios_time, size: 36), '7am - 10pm'),
    ]);
  }

  Widget informationRow(Icon icon, String text) {
    return Container(
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        icon,
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.end,
          ),
        )
      ]),
    );
  }

  Widget titleView() {
    TextStyle textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
    return Text(
      this.stall.name,
      style: textStyle,
    );
  }

  Widget imagesView() {
    return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: this.getImageSliders());
  }

  List<Widget> getImageSliders() {
    return this
        .stall
        .imgURLs
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
  }
}
