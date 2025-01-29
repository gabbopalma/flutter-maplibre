import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/styled_map_page.dart';

@immutable
class PerformanceWaterProject extends StatefulWidget {
  const PerformanceWaterProject({super.key});

  static const location = '/performance/water-project';

  @override
  State<PerformanceWaterProject> createState() => _PerformanceWaterProjectState();
}

class _PerformanceWaterProjectState extends State<PerformanceWaterProject> {
  late final MapController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cartografia Test')),
      body: MapLibreMap(
        options: MapOptions(
          initCenter: Position(7.532688, 44.375627),
          initZoom: 13,
        ),
        onMapCreated: (controller) => this.controller = controller,
        onStyleLoaded: (StyleController style) async {
          final geoJson = await rootBundle.loadString('assets/geojson/cartografia.json');

          await style.addSource(GeoJsonSource(id: 'lines', data: geoJson));
          await style.addLayer(
            const LineStyleLayer(
              id: 'lines-layer',
              sourceId: 'lines',
              layout: {
                'line-width': 2,
                'line-color': 'grey',
                'line-opacity': 0.5,
              },
            ),
          );
        },
      ),
    );
  }
}
