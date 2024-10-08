import 'package:flutter/material.dart';
import 'package:maplibre/maplibre.dart';

@immutable
class WebControlsPage extends StatefulWidget {
  const WebControlsPage({super.key});

  static const location = '/web-controls';

  @override
  State<WebControlsPage> createState() => _WebControlsPageState();
}

class _WebControlsPageState extends State<WebControlsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Web Controls')),
      body: MapLibreMap(
        options: MapOptions(
          zoom: 4,
          center: Position(9.17, 47.68),
          webControls: const [
            WebScaleControl(),
            WebGeolocateControl(),
            WebFullscreenControl(),
            LogoControl(),
            WebNavigationControl(visualizePitch: true),
          ],
        ),
      ),
    );
  }
}
