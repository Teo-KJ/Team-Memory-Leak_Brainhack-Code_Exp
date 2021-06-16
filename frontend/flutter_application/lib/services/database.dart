// singleton class to act as database
// by right supposed to be handled by backend, but just for demo in hackathon its implemented this way

import 'package:flutter_application/models/Stall.dart';

class Database {
  Database._privateConstructor();
  static final Database _instance = Database._privateConstructor();
  static Database get instance => _instance;

  List<Stall> stalls = [];
  var currentPoints = 400;
  var numAvailableVouchers = 3;

  List<Stall> getAllStalls() {
    return this.stalls;
  }

  void setAllStalls(List<Stall> stalls) {
    this.stalls = stalls;
  }

  int getCurrentPoints() {
    return this.currentPoints;
  }

  int getNumAvailableVouchers() {
    return this.numAvailableVouchers;
  }
}
