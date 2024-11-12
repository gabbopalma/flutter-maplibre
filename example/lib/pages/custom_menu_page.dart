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
import 'package:maplibre_example/pages/menu_page.dart';
import 'package:maplibre_example/pages/general/offline_page.dart';
import 'package:maplibre_example/pages/general/parameters_page.dart';
import 'package:maplibre_example/pages/general/permissions_page.dart';
import 'package:maplibre_example/pages/projects/projects_extralarge_page.dart';
import 'package:maplibre_example/pages/projects/projects_stresstest_page.dart';
import 'package:maplibre_example/pages/projects/projects_large_page.dart';
import 'package:maplibre_example/pages/projects/projects_medium_page.dart';
import 'package:maplibre_example/pages/general/styled_map_page.dart';
import 'package:maplibre_example/pages/general/two_maps_page.dart';
import 'package:maplibre_example/pages/general/user_interface_page.dart';
import 'package:maplibre_example/pages/general/user_location_page.dart';
import 'package:maplibre_example/pages/general/web_controls_page.dart';
import 'package:maplibre_example/pages/general/widget_layer_page.dart';

class CustomMenuPage extends StatelessWidget {
  const CustomMenuPage({super.key});

  static const location = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MapLibre NIO Demo')),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SectionTitle('Projects')),
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 1.5,
            children: const [
              ItemCard(
                iconData: Icons.folder,
                iconSize: 10,
                label: 'Medium',
                location: ProjectsMediumPage.location,
              ),
              ItemCard(
                iconData: Icons.folder,
                iconSize: 20,
                label: 'Large',
                location: ProjectsLargePage.location,
              ),
              ItemCard(
                iconData: Icons.folder,
                iconSize: 30,
                label: 'Extralarge',
                location: ProjectsExtralargePage.location,
              ),
              ItemCard(
                iconData: Icons.folder,
                iconSize: 40,
                label: 'Stress test',
                location: ProjectsStressTestPage.location,
              ),
            ],
          ),
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
