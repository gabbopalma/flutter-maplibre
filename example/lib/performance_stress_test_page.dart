import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/map_styles.dart';
import 'package:maplibre_example/styled_map_page.dart';

@immutable
class PerformanceStressTestPage extends StatefulWidget {
  const PerformanceStressTestPage({super.key});

  static const location = '/performance/stress-test';

  @override
  State<PerformanceStressTestPage> createState() =>
      _PerformanceStressTestPageState();
}

class _PerformanceStressTestPageState extends State<PerformanceStressTestPage> {
  late final MapController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stress Test')),
      body: MapLibreMap(
        options: MapOptions(
          initZoom: 8,
          initCenter: Position(9.17, 47.68),
          initStyle: MapStyles.maptilerStreets,
        ),
        onMapCreated: (controller) => this.controller = controller,
        onStyleLoaded: (StyleController style) async {
          final circlesGeoJson =
              await rootBundle.loadString('assets/geojson/europe_points.json');
          final linesGeoJson =
              await rootBundle.loadString('assets/geojson/africa_lines.json');

          await style
              .addSource(GeoJsonSource(id: 'circles', data: circlesGeoJson));
          await style.addLayer(
            const CircleStyleLayer(
              id: 'circles-layer',
              sourceId: 'circles',
              layout: {
                'circle-radius': 5,
                'circle-color': 'red',
                'circle-stroke-color': 'white',
              },
            ),
          );

          await style.addSource(GeoJsonSource(id: 'lines', data: linesGeoJson));
          await style.addLayer(
            const LineStyleLayer(
              id: 'lines-layer',
              sourceId: 'lines',
              layout: {
                'line-width': 2,
                'line-color': 'blue',
              },
            ),
          );
        },
      ),
    );
  }
}
