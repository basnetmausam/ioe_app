import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:ioe_app/pages/colleges_page/data.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Data;

    final CameraPosition _topView = CameraPosition(
      target: LatLng(args.latitude, args.longitude),
      zoom: 14.4746,
    );

    final CameraPosition _frontView = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(args.latitude, args.longitude),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);

    final Marker _topViewMarker = Marker(
      markerId: MarkerId('_topView'),
      infoWindow: InfoWindow(title: args.text),
      position: LatLng(args.latitude, args.longitude),
    );
    final Marker _frontViewMarker = Marker(
      markerId: MarkerId('_frontView'),
      infoWindow: InfoWindow(title: args.text),
      position: LatLng(args.latitude, args.longitude),
    );

    Future<void> _goToTheCollege() async {
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(_frontView));
    }

    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _topView,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {_topViewMarker, _frontViewMarker},
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 500.0),
        child: FloatingActionButton.extended(
          onPressed: _goToTheCollege,
          label: Text(args.text),
          icon: Icon(Icons.directions_car),
          elevation: (1.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
