import 'package:flutter/material.dart';
import 'package:maplibre_example/pages/animation_page.dart';
import 'package:maplibre_example/pages/annotations_circle_page.dart';
import 'package:maplibre_example/pages/annotations_marker_page.dart';
import 'package:maplibre_example/pages/annotations_mixed_page.dart';
import 'package:maplibre_example/pages/annotations_polygon_page.dart';
import 'package:maplibre_example/pages/annotations_polyline_page.dart';
import 'package:maplibre_example/pages/controller_page.dart';
import 'package:maplibre_example/pages/events_page.dart';
import 'package:maplibre_example/pages/gestures_page.dart';
import 'package:maplibre_example/pages/kiosk_page.dart';
import 'package:maplibre_example/pages/layers_circle_page.dart';
import 'package:maplibre_example/pages/layers_fill_extrusion_page.dart';
import 'package:maplibre_example/pages/layers_fill_page.dart';
import 'package:maplibre_example/pages/layers_heatmap_page.dart';
import 'package:maplibre_example/pages/layers_hillshade_page.dart';
import 'package:maplibre_example/pages/layers_line_page.dart';
import 'package:maplibre_example/pages/layers_raster_page.dart';
import 'package:maplibre_example/pages/layers_symbol_page.dart';
import 'package:maplibre_example/pages/login_page.dart';
import 'package:maplibre_example/pages/menu_page.dart';
import 'package:maplibre_example/pages/offline_page.dart';
import 'package:maplibre_example/pages/parameters_page.dart';
import 'package:maplibre_example/pages/permissions_page.dart';
import 'package:maplibre_example/pages/styled_map_page.dart';
import 'package:maplibre_example/pages/two_maps_page.dart';
import 'package:maplibre_example/pages/user_interface_page.dart';
import 'package:maplibre_example/pages/user_location_page.dart';
import 'package:maplibre_example/pages/web_controls_page.dart';
import 'package:maplibre_example/pages/widget_layer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MapLibre NIO Demo',
      initialRoute: MenuPage.location,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),
      routes: {
        LoginPage.location: (context) => const LoginPage(),
        MenuPage.location: (context) => const MenuPage(),
        KioskPage.location: (context) => const KioskPage(),
        AnimationPage.location: (context) => const AnimationPage(),
        GesturesPage.location: (context) => const GesturesPage(),
        EventsPage.location: (context) => const EventsPage(),
        StyledMapPage.location: (context) => const StyledMapPage(),
        UserLocationPage.location: (context) => const UserLocationPage(),
        UserInterfacePage.location: (context) => const UserInterfacePage(),
        WidgetLayerPage.location: (context) => const WidgetLayerPage(),
        OfflinePage.location: (context) => const OfflinePage(),
        PermissionsPage.location: (context) => const PermissionsPage(),
        LayersSymbolPage.location: (context) => const LayersSymbolPage(),
        LayersCirclePage.location: (context) => const LayersCirclePage(),
        LayersHeatmapPage.location: (context) => const LayersHeatmapPage(),
        LayersHillshadePage.location: (context) => const LayersHillshadePage(),
        LayersFillPage.location: (context) => const LayersFillPage(),
        LayersFillExtrusionPage.location: (context) => const LayersFillExtrusionPage(),
        LayersRasterPage.location: (context) => const LayersRasterPage(),
        LayersLinePage.location: (context) => const LayersLinePage(),
        WebControlsPage.location: (context) => const WebControlsPage(),
        AnnotationsMixedPage.location: (context) => const AnnotationsMixedPage(),
        AnnotationsCirclePage.location: (context) => const AnnotationsCirclePage(),
        AnnotationsMarkerPage.location: (context) => const AnnotationsMarkerPage(),
        AnnotationsPolylinePage.location: (context) => const AnnotationsPolylinePage(),
        AnnotationsPolygonPage.location: (context) => const AnnotationsPolygonPage(),
        ParametersPage.location: (context) => const ParametersPage(),
        ControllerPage.location: (context) => const ControllerPage(),
        TwoMapsPage.location: (context) => const TwoMapsPage(),
      },
    );
  }
}
