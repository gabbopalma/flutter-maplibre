import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/pages/layers/layers_symbol_page.dart';

@immutable
class ProjectsMediumPage extends StatefulWidget {
  const ProjectsMediumPage({super.key});

  static const location = '/projects/medium';

  @override
  State<ProjectsMediumPage> createState() => _ProjectsMediumPageState();
}

class _ProjectsMediumPageState extends State<ProjectsMediumPage> {
  final _points = <Point>[
    Point(coordinates: Position(9.17, 47.68)),
    Point(coordinates: Position(9.17, 48)),
    Point(coordinates: Position(9, 48)),
    Point(coordinates: Position(9.5, 48)),
  ];

  late final MapController _controller;
  bool _imageLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marker Annotations')),
      body: MapLibreMap(
        options: MapOptions(initZoom: 7, initCenter: Position(9.17, 47.68)),
        onEvent: (event) async {
          switch (event) {
            case MapEventMapCreated():
              _controller = event.mapController;
            case MapEventStyleLoaded():
              // add marker image to map
              final response =
                  await http.get(Uri.parse(LayersSymbolPage.imageUrl));
              final bytes = response.bodyBytes;
              await _controller.addImage('marker', bytes);
              setState(() {
                _imageLoaded = true;
              });
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
          MarkerAnnotationLayer(
            points: _points,
            textField: 'Marker',
            textAllowOverlap: true,
            iconImage: _imageLoaded ? 'marker' : null,
            iconSize: 0.08,
            iconAnchor: IconAnchor.bottom,
            textOffset: const [0, 1],
          ),
        ],
      ),
    );
  }
}