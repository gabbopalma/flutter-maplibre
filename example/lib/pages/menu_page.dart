import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:maplibre_example/pages/general/animation_page.dart';
import 'package:maplibre_example/pages/annotations/annotations_circle_page.dart';
import 'package:maplibre_example/pages/annotations/annotations_marker_page.dart';
import 'package:maplibre_example/pages/annotations/annotations_mixed_page.dart';
import 'package:maplibre_example/pages/annotations/annotations_polygon_page.dart';
import 'package:maplibre_example/pages/annotations/annotations_polyline_page.dart';
import 'package:maplibre_example/pages/general/controller_page.dart';
import 'package:maplibre_example/pages/general/events_page.dart';
import 'package:maplibre_example/pages/general/gestures_page.dart';
import 'package:maplibre_example/pages/layers/layers_circle_page.dart';
import 'package:maplibre_example/pages/layers/layers_fill_extrusion_page.dart';
import 'package:maplibre_example/pages/layers/layers_fill_page.dart';
import 'package:maplibre_example/pages/layers/layers_heatmap_page.dart';
import 'package:maplibre_example/pages/layers/layers_hillshade_page.dart';
import 'package:maplibre_example/pages/layers/layers_line_page.dart';
import 'package:maplibre_example/pages/layers/layers_raster_page.dart';
import 'package:maplibre_example/pages/layers/layers_symbol_page.dart';
import 'package:maplibre_example/pages/general/offline_page.dart';
import 'package:maplibre_example/pages/general/parameters_page.dart';
import 'package:maplibre_example/pages/general/permissions_page.dart';
import 'package:maplibre_example/pages/general/styled_map_page.dart';
import 'package:maplibre_example/pages/general/two_maps_page.dart';
import 'package:maplibre_example/pages/general/user_interface_page.dart';
import 'package:maplibre_example/pages/general/user_location_page.dart';
import 'package:maplibre_example/pages/general/web_controls_page.dart';
import 'package:maplibre_example/pages/general/widget_layer_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const location = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MapLibre Demo')),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SectionTitle('General')),
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 1.5,
            children: const [
              ItemCard(
                label: 'Styled Map',
                iconData: Icons.map,
                location: StyledMapPage.location,
              ),
              ItemCard(
                label: 'Parameters',
                iconData: Icons.build,
                location: ParametersPage.location,
              ),
              ItemCard(
                label: 'Gestures',
                iconData: Icons.back_hand,
                location: GesturesPage.location,
              ),
              ItemCard(
                label: 'Events',
                iconData: Icons.notifications,
                location: EventsPage.location,
              ),
              if (kIsWeb)
                ItemCard(
                  label: 'Web Controls',
                  iconData: Icons.toggle_off,
                  location: WebControlsPage.location,
                ),
              ItemCard(
                label: 'Controller',
                iconData: Icons.api,
                location: ControllerPage.location,
              ),
              ItemCard(
                label: 'Two Maps',
                iconData: Icons.looks_two,
                location: TwoMapsPage.location,
              ),
              ItemCard(
                label: 'Animation',
                iconData: Icons.animation,
                location: AnimationPage.location,
              ),
              if (!kIsWeb)
                ItemCard(
                  label: 'User Location',
                  iconData: Icons.gps_fixed,
                  location: UserLocationPage.location,
                ),
              ItemCard(
                label: 'User interface',
                iconData: Icons.control_camera,
                location: UserInterfacePage.location,
              ),
              if (!kIsWeb)
                ItemCard(
                  label: 'Offline',
                  iconData: Icons.wifi_off,
                  location: OfflinePage.location,
                ),
              if (!kIsWeb)
                ItemCard(
                  label: 'Permissions',
                  iconData: Icons.key,
                  location: PermissionsPage.location,
                ),
            ],
          ),
          const SliverToBoxAdapter(child: SectionTitle('Annotations')),
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 1.5,
            children: const [
              ItemCard(
                label: 'Mixed Annotations',
                iconData: Icons.control_point_duplicate_outlined,
                location: AnnotationsMixedPage.location,
              ),
              ItemCard(
                label: 'Widgets',
                iconData: Icons.location_on,
                location: WidgetLayerPage.location,
              ),
              ItemCard(
                label: 'Circles',
                iconData: Icons.circle,
                location: AnnotationsCirclePage.location,
              ),
              ItemCard(
                label: 'Markers',
                iconData: Icons.location_on,
                location: AnnotationsMarkerPage.location,
              ),
              ItemCard(
                label: 'Polygons',
                iconData: Icons.format_shapes,
                location: AnnotationsPolygonPage.location,
              ),
              ItemCard(
                label: 'Polylines',
                iconData: Icons.polyline,
                location: AnnotationsPolylinePage.location,
              ),
            ],
          ),
          const SliverToBoxAdapter(child: SectionTitle('Layers')),
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 1.5,
            children: const [
              ItemCard(
                label: 'Circle',
                iconData: Icons.circle,
                location: LayersCirclePage.location,
              ),
              ItemCard(
                label: 'Fill',
                iconData: Icons.format_shapes,
                location: LayersFillPage.location,
              ),
              ItemCard(
                label: 'Fill Extrusion',
                iconData: Icons.house,
                location: LayersFillExtrusionPage.location,
              ),
              ItemCard(
                label: 'Heatmap',
                iconData: Icons.thermostat,
                location: LayersHeatmapPage.location,
              ),
              ItemCard(
                label: 'Hillshade',
                iconData: Icons.landscape,
                location: LayersHillshadePage.location,
              ),
              ItemCard(
                label: 'Line',
                iconData: Icons.polyline,
                location: LayersLinePage.location,
              ),
              ItemCard(
                label: 'Raster',
                iconData: Icons.grid_on,
                location: LayersRasterPage.location,
              ),
              ItemCard(
                label: 'Symbol',
                iconData: Icons.emoji_emotions,
                location: LayersSymbolPage.location,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.label,
    required this.iconData,
    required this.location,
    this.iconSize,
    super.key,
  });

  final String label;
  final IconData iconData;
  final String location;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => Navigator.of(context).pushNamed(location),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(iconData, size: iconSize), Text(label, textAlign: TextAlign.center)],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label, style: const TextStyle(fontSize: 18)),
    );
  }
}