import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre/src/inherited_model.dart';

/// The [MapController] can be used to control, update and manipulate a
/// rendered [MapLibreMap].
abstract interface class MapController {
  /// Find the [MapController] of the closest [MapLibreMap] in the widget tree.
  /// Returns null if called outside of the [MapLibreMap.children].
  static MapController? maybeOf(BuildContext context) =>
      MapLibreInheritedModel.maybeMapControllerOf(context);

  /// Find the [MapController] of the closest [MapLibreMap] in the widget tree.
  /// Throws an [StateError] if called outside of the [MapLibreMap.children].
  static MapController of(BuildContext context) =>
      maybeOf(context) ??
      (throw StateError('Unable to find an instance of MapController'));

  /// Get the [MapOptions] from [MapLibreMap.options].
  MapOptions get options;

  /// Convert a latitude/longitude coordinate to a screen location.
  // TODO: can be made sync when flutter raster and ui thread are merged
  Future<Offset> toScreenLocation(Position lngLat);

  /// Get the latitude/longitude coordinate for a screen location.
  // TODO: can be made sync when flutter raster and ui thread are merged
  Future<Position> toLngLat(Offset screenLocation);

  /// Convert a latitude/longitude coordinate to a screen location.
  // TODO: can be made sync when flutter raster and ui thread are merged
  Future<List<Offset>> toScreenLocations(List<Position> lngLats);

  /// Get the latitude/longitude coordinate for a screen location.
  // TODO: can be made sync when flutter raster and ui thread are merged
  Future<List<Position>> toLngLats(List<Offset> screenLocations);

  /// Convert a latitude/longitude coordinate to a screen location.
  ///
  /// Only supported on web.
  Offset toScreenLocationSync(Position lngLat);

  /// Get the latitude/longitude coordinate for a screen location.
  ///
  /// Only supported on web.
  Position toLngLatSync(Offset screenLocation);

  /// Convert a latitude/longitude coordinate to a screen location.
  ///
  /// Only supported on web.
  List<Offset> toScreenLocationsSync(List<Position> lngLats);

  /// Get the latitude/longitude coordinate for a screen location.
  ///
  /// Only supported on web.
  List<Position> toLngLatsSync(List<Offset> screenLocations);

  /// Instantly move the map camera to a new location.
  Future<void> moveCamera({
    Position? center,
    double? zoom,
    double? bearing,
    double? pitch,
  });

  /// Animate the map camera to a new location.
  Future<void> animateCamera({
    Position? center,
    double? zoom,
    double? bearing,
    double? pitch,
    Duration nativeDuration = const Duration(seconds: 2),
    double webSpeed = 1.2,
    Duration? webMaxDuration,
  });

  /// Animate the map camera to a new location.
  Future<void> fitBounds({
    required LngLatBounds bounds,
    double? bearing,
    double? pitch,
    Duration nativeDuration = const Duration(seconds: 2),
    double webSpeed = 1.2,
    Duration? webMaxDuration,
    Offset offset = Offset.zero,
    double webMaxZoom = double.maxFinite,
    bool webLinear = false,
    EdgeInsets padding = EdgeInsets.zero,
  });

  /// Add a new source to the map.
  Future<void> addSource(Source source);

  /// Add a new layer to the map. The source must be added before adding it to
  /// the map.
  ///
  /// `belowLayerId` The ID of an existing layer to insert the new layer before,
  /// resulting in the new layer appearing visually beneath the existing layer.
  /// If this argument is not specified, the layer will be appended to the end
  /// of the layers array and appear visually above all other layers.
  Future<void> addLayer(StyleLayer layer, {String? belowLayerId});

  /// Update the data of a GeoJSON source.
  Future<void> updateGeoJsonSource({required String id, required String data});

  /// Removes the layer with the given ID from the map's style.
  Future<void> removeLayer(String id);

  /// Removes the source with the given ID from the map's style.
  Future<void> removeSource(String id);

  /// Get the current camera position on the map.
  MapCamera getCamera();

  /// Get the current camera position on the map.
  MapCamera? get camera;

  /// Returns the distance spanned by one pixel at the specified latitude and
  /// current zoom level.
  ///
  /// The distance between pixels decreases as the latitude approaches the
  /// poles. This relationship parallels the relationship between longitudinal
  /// coordinates at different latitudes.
  // TODO: can be made sync when flutter raster and ui thread are merged
  Future<double> getMetersPerPixelAtLatitude(double latitude);

  /// The smallest bounding box that includes the visible region.
  // TODO: can be made sync when flutter raster and ui thread are merged
  Future<LngLatBounds> getVisibleRegion();

  /// Returns the distance spanned by one pixel at the specified latitude and
  /// current zoom level.
  ///
  /// The distance between pixels decreases as the latitude approaches the
  /// poles. This relationship parallels the relationship between longitudinal
  /// coordinates at different latitudes.
  ///
  /// Only supported on web.
  double getMetersPerPixelAtLatitudeSync(double latitude);

  /// The smallest bounding box that includes the visible region.
  ///
  /// Only supported on web.
  LngLatBounds getVisibleRegionSync();

  /// Get a list of all attributions from the map style.
  Future<List<String>> getAttributions();

  /// Add an image to the map.
  Future<void> addImage(String id, Uint8List bytes);

  /// Removes an image from the map
  Future<void> removeImage(String id);

  /// Queries the map for rendered features.
  Future<List<QueriedLayer>> queryLayers(Offset screenLocation);

  /// Show the user location on the map
  Future<void> enableLocation({
    Duration fastestInterval = const Duration(milliseconds: 750),
    Duration maxWaitTime = const Duration(seconds: 1),
    bool pulseFade = true,
    bool accuracyAnimation = true,
    bool compassAnimation = true,
    bool pulse = true,
  });

  /// Track the user location on the map
  ///
  /// Set [trackLocation] to false if only the bearing should get tracked
  /// (defaults to true).
  ///
  /// Use [trackBearing] to set if the bearing should get tracked according to
  /// the GPS location, compass direction or ignored.
  Future<void> trackLocation({
    bool trackLocation = true,
    BearingTrackMode trackBearing = BearingTrackMode.gps,
  });
}

/// The mode how the bearing should get tracked on the map.
/// Used in [MapController.trackLocation].
enum BearingTrackMode {
  /// No bearing tracking.
  none,

  /// Use the bearing provided by the compass sensor.
  compass,

  /// Use the bearing provided by the GPS location (normalized).
  gps;
}

/// The mode how render the location on the map.
/// Used in [MapController.enableLocation].
enum BearingRenderMode {
  /// Do not display the current bearing.
  none,

  /// Use the device compass to render the bearing.
  compass,

  /// Use the GPS location data to render the bearing.
  gps;
}
