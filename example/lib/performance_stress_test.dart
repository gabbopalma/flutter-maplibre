import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/styled_map_page.dart';

@immutable
class PerformanceStressTest extends StatefulWidget {
  const PerformanceStressTest({super.key});

  static const location = '/performance/stress-test';

  @override
  State<PerformanceStressTest> createState() => _PerformanceStressTestState();
}

class _PerformanceStressTestState extends State<PerformanceStressTest> {
  late final MapController controller;
  List<CircleLayer> circles = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stress Test')),
      body: MapLibreMap(
        options: MapOptions(
          initCenter: Position(9.17, 47.68),
          initZoom: 8,
          initStyle: Theme.of(context).brightness == Brightness.light ? StyledMapPage.styleUrl : StyledMapPage.styleUrlDark,
          attribution: false,
        ),
        onMapCreated: (controller) => this.controller = controller,
        onStyleLoaded: () async {
          final circlesGeoJson = await rootBundle.loadString('assets/geojson/europe_points.json');
          final linesGeoJson = await rootBundle.loadString('assets/geojson/africa_lines.json');

          await controller.addSource(GeoJsonSource(id: 'circles', data: circlesGeoJson));
          await controller.addLayer(
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

          await controller.addSource(GeoJsonSource(id: 'lines', data: linesGeoJson));
          await controller.addLayer(
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
        // layers: [
        //   ...circles,
        // ],
        children: const [
          SourceAttribution(),
        ],
      ),
    );
  }
}
