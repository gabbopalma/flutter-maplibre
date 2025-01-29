import 'package:flutter/material.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/map_styles.dart';

@immutable
class PerformanceOfProjectPage extends StatefulWidget {
  const PerformanceOfProjectPage({super.key});

  static const location = '/performance/of-project';

  /// **Use your own key for your project!**
  /// This key will be rotated occasionally.
  /// Protomaps offers free usage for non commercial projects and affordable
  /// pricing for commercial projects. Alternatively, you can host a tile
  /// server yourself. https://protomaps.com/
  static const styleUrl = 'https://api.protomaps.com/styles/v2/light.json?key=a6f9aebb3965458c';
  static const styleUrlDark = 'https://api.protomaps.com/styles/v2/dark.json?key=a6f9aebb3965458c';

  @override
  State<PerformanceOfProjectPage> createState() => _PerformanceOfProjectPageState();
}

class _PerformanceOfProjectPageState extends State<PerformanceOfProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OF Project Test')),
      body: MapLibreMap(
        options: MapOptions(
          initZoom: 8,
          initCenter: Position(9.17, 47.68),
          initStyle: MapStyles.maptilerStreets,
          
        ),
        children: const [SourceAttribution()],
      ),
    );
  }
}
