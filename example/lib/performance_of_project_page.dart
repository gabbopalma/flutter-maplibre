import 'package:flutter/material.dart';
import 'package:maplibre/maplibre.dart';

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
          initCenter: Position(9.17, 47.68),
          initZoom: 8,
          initStyle: Theme.of(context).brightness == Brightness.light ? PerformanceOfProjectPage.styleUrl : PerformanceOfProjectPage.styleUrlDark,
          attribution: false,
          nativeLogo: false,
        ),
        children: const [SourceAttribution()],
      ),
    );
  }
}
