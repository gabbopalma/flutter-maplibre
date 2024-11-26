import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/styled_map_page.dart';

@immutable
class PerformanceEditGeometryPage extends StatefulWidget {
  const PerformanceEditGeometryPage({super.key});

  static const location = '/performance/edit-geometry';

  @override
  State<PerformanceEditGeometryPage> createState() => _PerformanceEditGeometryPageState();
}

class _PerformanceEditGeometryPageState extends State<PerformanceEditGeometryPage> {
  late final MapController controller;

  final polylinePoints = <Position>[
    Position(7.547145078554337, 44.38876634816316),
    Position(7.548805592059722, 44.38797680237073),
    Position(7.548782277210222, 44.387875403906634),
    Position(7.548844883260671, 44.387774151082),
    Position(7.549005242620325, 44.38774667935502),
    Position(7.549134848129796, 44.387798483172304),
    Position(7.5491831756086185, 44.38790680009623),
    Position(7.549106290983843, 44.38799863385253),
    Position(7.549183175612342, 44.38806613550014),
    Position(7.549587933416916, 44.388435860404485),
    Position(7.549908040147841, 44.38872161965884),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Geometry Test')),
      body: MapLibreMap(
        options: MapOptions(
          initCenter: Position(7.548834, 44.387975),
          initZoom: 16,
          initStyle: Theme.of(context).brightness == Brightness.light ? StyledMapPage.styleUrl : StyledMapPage.styleUrlDark,
          attribution: false,
        ),
        onEvent: (MapEvent event) async {
          switch (event) {
            case MapEventClick():
            case MapEventDoubleClick():
            case MapEventSecondaryClick():
            case MapEventLongClick():
              final point = (event as MapEventUserInput).point;
              final screenLoc = await controller.toScreenLocation(point);
              await controller.queryLayers(screenLoc).then((value) {
                log('queryLayers: ${value.where((e) => e.layerId.contains('maplibre-layer')).map((e) => e.layerId).toList()}');
              });
            default:
              return;
          }
        },
        onMapCreated: (controller) {
          this.controller = controller;
        },
        onStyleLoaded: () async {
          final linestring = LineString(coordinates: polylinePoints);

          await controller.addSource(
            GeoJsonSource(id: 'maplibre-test-edit', data: jsonEncode(linestring.toJson())),
          );
          await controller.addLayer(
            const LineStyleLayer(
              id: 'maplibre-test-edit-layer',
              sourceId: 'maplibre-test-edit',
              paint: {
                'line-color': '#F00',
                'line-width': 3,
                'draggable': true,
              },
              layout: {},
            ),
          );
        },
        layers: [
          PolylineLayer(
            polylines: [
              LineString(
                coordinates: [
                  Position(9.17, 47.68),
                  Position(9.18, 47.69),
                  Position(9.19, 47.68),
                  Position(9.20, 47.71),
                  Position(9.21, 47.72),
                ],
              ),
            ],
            color: Colors.red,
            width: 3,
          ),
        ],
        children: const [
          SourceAttribution(),
        ],
      ),
    );
  }
}
