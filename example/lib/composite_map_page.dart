import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/models/geopoint.dart';

@immutable
class CompositeMapPage extends StatefulWidget {
  const CompositeMapPage({super.key});

  static const location = '/composite_map';

  @override
  State<CompositeMapPage> createState() => _CompositeMapPageState();
}

class _CompositeMapPageState extends State<CompositeMapPage> {
  MapController? controller;
  gm.GoogleMapController? gmapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Composite Map')),
      body: Stack(
        children: [
          MapLibreMap(
            options: MapOptions(
              initCenter: Position(12.912884, 43.910108),
              initZoom: 12,
              
              initStyle: '''
{
  "version": 8,
  "name": "Empty Transparent Style",
  "sources": {},
  "layers": [],
  "id": "transparent-style",
  "background": {
    "color": "rgba(0,0,0,0)" 
  }
}''',
            ),
            // children: [],
            onEvent: (MapEvent event) {
              switch (event) {
                case MapEventMapCreated():
                  controller = event.mapController;
                case MapEventMoveCamera():
                  _onMapPositionChanged(controller?.camera);
                default:
                  return;
              }
            },
          ),
          gm.GoogleMap(
            initialCameraPosition: const gm.CameraPosition(
              target: gm.LatLng(43.910108, 12.912884),
              zoom: 12,
            ),
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            tiltGesturesEnabled: false,
            scrollGesturesEnabled: false,
            rotateGesturesEnabled: false,
            onMapCreated: (controller) => gmapController = controller,
          ),
        ],
      ),
    );
  }

  /// Callback for map movements. Reflects map movements to the Google Map.
  void _onMapPositionChanged(MapCamera? newCamera) {
    log('Map position changed: $newCamera');
    // Move the Google Map as well.
    if (gmapController != null && newCamera != null) {
      gmapController?.moveCamera(
        gm.CameraUpdate.newCameraPosition(
          gm.CameraPosition(
            target: GeoPoint(newCamera.center.lat.toDouble(), newCamera.center.lng.toDouble()).toGoogleLatLng(),
            // zoom: newPosition.zoom!,
            zoom: newCamera.zoom,
            bearing: -(controller?.camera!.bearing ?? 0),
          ),
        ),
      );
    }
  }
}
