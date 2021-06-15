import 'dart:convert';

import 'package:flutter_application/models/HawkerCentre.dart';

class Stall {
  int id;
  String name;
  String description;
  String address;
  List<String> imgURLs;
  double latitude;
  double longitude;

  Stall(
      {this.id,
      this.name,
      this.description,
      this.address,
      this.imgURLs,
      this.latitude,
      this.longitude});

  factory Stall.fromJson(Map<String, dynamic> json) {
    List<String> imagesList = new List<String>();
    int length = json['imgURLs'].length;
    for (int i = 0; i < length; i++) {
      imagesList.add(json['imgURLs'][i] as String);
    }
    return Stall(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        address: json['address'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        imgURLs: imagesList);
  }
}
