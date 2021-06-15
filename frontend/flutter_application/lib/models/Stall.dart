import 'package:flutter_application/models/HawkerCentre.dart';

class Stall {
  int id;
  String name;
  HawkerCentre hawkerCentre;
  List<String> imgURLs;

  Stall({this.id, this.name, this.hawkerCentre, this.imgURLs});
}
