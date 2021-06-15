import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location/location.dart';

class HomeMapView extends StatefulWidget {
  const HomeMapView({Key key}) : super(key: key);

  @override
  _HomeMapViewState createState() => _HomeMapViewState();
}

class _HomeMapViewState extends State<HomeMapView> {
  LatLng currentLocation;
  List<Marker> markers = [];
  MapController mapController = MapController();

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    generateStallsMarkers();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        center: LatLng(0, 0),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        MarkerLayerOptions(markers: [
          ...this.markers,
          Marker(
            // current location pin
            width: 80.0,
            height: 80.0,
            point: currentLocation,
            builder: (ctx) => Container(
                child: Icon(
              Entypo.location_pin,
              size: 50,
              color: Colors.red,
            )),
          ),
        ]),
      ],
    );
  }

  void generateStallsMarkers() {
    // this function takes in a list of stalls objects, and for each stall, generate a location pin
    var markers = [
      Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(0, 0),
        builder: (ctx) => Container(
            child: Icon(
          Entypo.location_pin,
          size: 50,
          color: Colors.red,
        )),
      ),
    ];

    this.setState(() {
      this.markers = markers;
    });
  }

  void getCurrentLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    var currentLocation = LatLng(_locationData.latitude, _locationData.longitude);
    mapController.move(currentLocation, 14);
    this.setState(() {
      this.currentLocation = currentLocation;
    });
  }
}
