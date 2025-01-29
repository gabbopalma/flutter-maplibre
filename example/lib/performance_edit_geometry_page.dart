import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/map_styles.dart';

@immutable
class PerformanceEditGeometryPage extends StatefulWidget {
  const PerformanceEditGeometryPage({super.key});

  static const location = '/performance/edit-geometry';

  @override
  State<PerformanceEditGeometryPage> createState() =>
      _PerformanceEditGeometryPageState();
}

class _PerformanceEditGeometryPageState
    extends State<PerformanceEditGeometryPage> {
  late final MapController controller;
  late final StyleController styleController;

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
          initZoom: 16,
          initStyle: MapStyles.maptilerStreets,
          initCenter: Position(7.548834, 44.387975),
          gestures: const MapGestures.all(),
        ),
        onEvent: (MapEvent event) async {
          switch (event) {
            case MapEventClick():
            case MapEventDoubleClick():
            case MapEventSecondaryClick():
              // case MapEventLongClick():
              final point = (event as MapEventUserInput).point;
              final screenLoc = await controller.toScreenLocation(point);
              await controller.queryLayers(screenLoc).then((value) {
                log('queryLayers: ${value.where((e) => e.layerId.contains('maplibre-layer')).map((e) => e.layerId).toList()}');
              });
            case MapEventFeatureDrag():
              log('${event.event} feature ${event.feature.id} to ${event.point.lat}, ${event.point.lng}');

              if (event.event != LongPressEventType.begin)
                await moveMarker(event.feature, event.point);
            default:
              return;
          }
        },
        onMapCreated: (controller) {
          this.controller = controller;
        },
        onStyleLoaded: (StyleController style) async {
          styleController = style;
          await addImageFromAsset('marker', 'assets/symbols/custom-icon.png');
          // final linestring = LineString(coordinates: polylinePoints);

          // await controller.addSource(
          //   GeoJsonSource(id: 'maplibre-test-edit', data: jsonEncode(linestring.toJson())),
          // );
          // await controller.addLayer(
          //   const LineStyleLayer(
          //     id: 'maplibre-test-edit-layer',
          //     sourceId: 'maplibre-test-edit',
          //     paint: {
          //       'line-color': '#F00',
          //       'line-width': 3,
          //     },
          //   ),
          // );
          await style.addSource(
            GeoJsonSource(
              id: 'custom-marker-source',
              data: jsonEncode(
                FeatureCollection(
                  features: polylinePoints.indexed.map<Feature<GeometryObject>>(
                    ((int index, Position e) polyline) {
                      final index = polyline.$1;
                      final position = polyline.$2;
                      final id = 'custom-marker-$index';

                      return Feature(
                        id: id,
                        geometry: Point(coordinates: position),
                        properties: {
                          'id': id,
                          'index': index,
                        },
                      );
                    },
                  ).toList(),
                ).toJson(),
              ),
            ),
          );
          await style.addLayer(
            const SymbolStyleLayer(
              id: 'custom-marker-layer',
              sourceId: 'custom-marker-source',
              layout: {
                'icon-image': 'marker',
                'icon-size': 1,
                'icon-allow-overlap': true,
              },
            ),
          );
        },
        layers: [
          // PolylineLayer(
          //   polylines: [
          //     Feature(
          //       id: 'custom-line',
          //       geometry: LineString(coordinates: polylinePoints),
          //     ),
          //   ],
          //   color: Colors.red,
          //   width: 3,
          // ),
          // MarkerLayer(
          //   markers: [
          //     ...polylinePoints.indexed.map(
          //       ((int index, Position e) polyline) => Feature(
          //         id: 'custom-marker-${polyline.$1}',
          //         geometry: Point(coordinates: polyline.$2),
          //       ),
          //     ),
          //   ],
          //   iconAllowOverlap: true,
          //   iconImage: 'marker',
          // ),
        ],
      ),
    );
  }

  /// Adds an asset image to the currently displayed style
  Future<void> addImageFromAsset(String name, String assetName) async {
    final bytes = await rootBundle.load(assetName);
    final list = bytes.buffer.asUint8List();

    await styleController.addImage(name, list);
  }

  Future<void> moveMarker(Feature feature, Position position) async {
    log(feature.properties.toString());
    if (feature.properties == null || feature.properties!['index'] == null)
      return;
    final index = feature.properties!['index'] as int;
    final editedPoints = polylinePoints;
    editedPoints[index] = position;

    final linestring = LineString(coordinates: editedPoints);

    await styleController.updateGeoJsonSource(
      id: 'custom-marker-source',
      data: jsonEncode(
        linestring.toJson(),
      ),
    );
  }
}
