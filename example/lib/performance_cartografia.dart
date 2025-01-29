import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/map_styles.dart';

@immutable
class PerformanceCartografia extends StatefulWidget {
  const PerformanceCartografia({super.key});

  static const location = '/performance/cartografia';

  @override
  State<PerformanceCartografia> createState() => _PerformanceCartografiaState();
}

class _PerformanceCartografiaState extends State<PerformanceCartografia> {
  late final MapController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cartografia Test')),
      body: MapLibreMap(
        options: MapOptions(
          initZoom: 13,
          initStyle: MapStyles.maptilerStreets,
          initCenter: Position(7.532688, 44.375627),
        ),
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
