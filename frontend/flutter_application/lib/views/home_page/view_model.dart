import 'package:flutter/material.dart';
import 'package:flutter_application/models/Stall.dart';
import 'package:flutter_application/services/network.dart';

class HomePageViewModel extends ChangeNotifier {
  List<Stall> stalls = [];

  HomePageViewModel() {
    this.fetchAllStalls();
  }

  fetchAllStalls() async {
    var result = await NetworkManager.getAllStalls();
    this.stalls = result;
    notifyListeners();
  }
}
