// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/styled_map_page.dart';

@immutable
class StreetsMapPage extends StatefulWidget {
  const StreetsMapPage({super.key});

  static const location = '/streets-map';

  @override
  State<StreetsMapPage> createState() => _StreetsMapPageState();
}

class _StreetsMapPageState extends State<StreetsMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Streets Map')),
      body: MapLibreMap(
        options: MapOptions(
          initCenter: Position(7.532688, 44.375627),
          initZoom: 13,
          initStyle: 'https://api.maptiler.com/maps/streets-v2/style.json?key=vtLC2eJ5637uotCVnHyu',
        ),
      ),
    );
  }
}
