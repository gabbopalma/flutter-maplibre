import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/pages/layers/layers_symbol_page.dart';

@immutable
class ProjectsStressTestPage extends StatefulWidget {
  const ProjectsStressTestPage({super.key});

  static const location = '/projects/stresstest';

  @override
  State<ProjectsStressTestPage> createState() => _ProjectsStressTestPageState();
}

class _ProjectsStressTestPageState extends State<ProjectsStressTestPage> {
  late final MapController _controller;

  var _points = <Point>[];
  var _lineStrings = <LineString>[];
  bool _imageLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stress test project')),
      body: MapLibreMap(
        options: MapOptions(
          initZoom: 3,
          initCenter: Position(10.0, 50.0),
          nativeLogo: false,
        ),
        onEvent: (event) async {
          switch (event) {
            case MapEventMapCreated():
              _controller = event.mapController;
            case MapEventStyleLoaded():
              // add marker image to map
              final response = await http.get(Uri.parse(LayersSymbolPage.imageUrl));
              final bytes = response.bodyBytes;
              await _controller.addImage('marker', bytes);
              setState(() {
                _imageLoaded = true;
              });

              // add some random points
              for (var i = 0; i < 1000; i++) {
                _addRandomPoint();
                _createRandomLineString();
              }
            case MapEventClick():
              // add a new marker on click
              setState(() {
                _points.add(Point(coordinates: event.point));
              });
            default:
              // ignore all other events
              break;
          }
        },
        layers: [
          CircleAnnotationLayer(
            points: _points,
          ),
          MarkerAnnotationLayer(
            points: _points,
            iconAllowOverlap: true,
            iconImage: _imageLoaded ? 'marker' : null,

            iconSize: 0.1, //0.08,
            iconIgnorePlacement: true,
            iconAnchor: IconAnchor.bottom,
            textOffset: const [0, 1],
          ),
          PolylineAnnotationLayer(
            color: Colors.orange,
            polylines: _lineStrings,
          ),
        ],
      ),
    );
  }

  void _addRandomPoint() {
    final random = Random();
    final lat = 35.0 + random.nextDouble() * 35.0; // Latitude range: 35.0 to 70.0
    final lon = -10.0 + random.nextDouble() * 80.0; // Longitude range: -10.0 to 50.0

    setState(() {
      _points.add(Point(coordinates: Position(lon, lat)));
    });
  }

  LineString _createRandomLineString() {
    final random = Random();
    final points = List.generate(10, (_) {
      final double lat = 35.0 + random.nextDouble() * 35.0; // Latitude range: 35.0 to 70.0
      final double lon = -10.0 + random.nextDouble() * 60.0; // Longitude range: -10.0 to 50.0
      return Position(lon, lat);
    });

    return LineString(coordinates: points);
  }
}
