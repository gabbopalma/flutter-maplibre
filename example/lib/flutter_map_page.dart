import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_example/styled_map_page.dart';

@immutable
class FlutterMapPage extends StatefulWidget {
  const FlutterMapPage({super.key});

  static const location = '/flutter-map';

  @override
  State<FlutterMapPage> createState() => _FlutterMapPageState();
}

class _FlutterMapPageState extends State<FlutterMapPage> {
  MapController? _mlController;
  late final fm.MapController _fmController = fm.MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_map')),
      body: fm.FlutterMap(
        mapController: _fmController,
        options: fm.MapOptions(
          initialZoom: 2,
          onPositionChanged: (camera, hasGesture) {
            debugPrint(camera.center.toString());
            _mlController?.jumpTo(
              center: Position(camera.center.longitude, camera.center.latitude),
              zoom: camera.zoom - 1,
              bearing: camera.rotation,
            );
          },
        ),
        children: [
          IgnorePointer(
            child: MapLibreMap(
              options: MapOptions(
                center: Position(9.17, 47.68),
                style: StyledMapPage.styleUrl,
              ),
              onMapCreated: (controller) => _mlController = controller,
            ),
          ),
        ],
      ),
    );
  }
}
