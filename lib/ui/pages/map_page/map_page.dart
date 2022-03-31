import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:protect_women/ui/global_widgets/main_layout.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
  Completer<GoogleMapController> _completer = Completer();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      widget: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          initialCameraPosition: const CameraPosition(target: LatLng(46.45, 30.73)),
          mapType: MapType.hybrid,
          onMapCreated: (controller) {
            widget._completer.complete(controller);
          },
        ),
      ),
    );
  }
}
