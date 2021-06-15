import 'dart:convert';

import 'package:flutter_application/models/Stall.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
  static String baseURL = "http://18.136.208.222:3001";

  static Future<List<Stall>> getAllStalls() async {
    var url = NetworkManager.baseURL + '/hawkers';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      var resultList = [];
      for (var i = 0; i < result.length; i++) {
        resultList.add(Stall.fromJson(result[i]));
      }
      print(resultList);
      return [];
    } else {
      throw Exception('Failed to load album');
    }
  }
}
