import 'package:flutter/material.dart';
import 'package:flutter_application/models/Stall.dart';
import 'package:flutter_application/views/hawker_detail/hawker_detail_page.dart';
import 'package:flutter_application/views/home_page/view_model.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageViewModel>(
      builder: (context, viewModel, child) {
        return FlutterMap(
          mapController: mapController,
          options: MapOptions(
            center: currentLocation,
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(
                markers: [
                      Marker(
                        // current location pin
                        width: 80.0,
                        height: 80.0,
                        point: currentLocation,
                        builder: (ctx) => Container(
                            child: Icon(
                          Entypo.location_pin,
                          size: 50,
                          color: Colors.blue,
                        )),
                      ),
                    ] +
                    viewModel.stalls.map((e) => generateStallMarker(e)).toList()),
          ],
        );
      },
    );
  }

  Marker generateStallMarker(Stall stall) {
    // this function takes in a list of stalls objects, and for each stall, generate a location pin

    return Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(stall.latitude, stall.longitude),
      builder: (ctx) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HawkerDetailPage(stall),
          ));
        },
        child: Container(
            child: Icon(
          Entypo.location_pin,
          size: 50,
          color: Colors.red,
        )),
      ),
    );
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
    // var currentLocation = LatLng(_locationData.latitude, _locationData.longitude);
    var currentLocation = LatLng(1.324103, 103.814);
    mapController.move(currentLocation, 18);
    this.setState(() {
      this.currentLocation = currentLocation;
    });
  }
}
