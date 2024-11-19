import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:maplibre/maplibre.dart' as ml;

class GeoPoint {
  GeoPoint(
    this.latitude,
    this.longitude,
  );

  GeoPoint.fromGoogleLatLng(gm.LatLng googleLatLng)
      : latitude = googleLatLng.latitude,
        longitude = googleLatLng.longitude;

  GeoPoint.copy(GeoPoint other)
      : latitude = other.latitude,
        longitude = other.longitude;

  GeoPoint.fromMapLibrePos(ml.Position mapLibrePos)
      : latitude = mapLibrePos.lat.toDouble(),
        longitude = mapLibrePos.lng.toDouble();

  final double latitude;
  final double longitude;

  gm.LatLng toGoogleLatLng() => gm.LatLng(latitude, longitude);
  ml.Position toMapLibrePos() => ml.Position(latitude, longitude);
  gm.CameraPosition toCameraPosition({double? zoom, double? bearing, double? tilt}) => gm.CameraPosition(
        target: gm.LatLng(latitude, longitude),
        zoom: zoom ?? 0.0,
        bearing: bearing ?? 0.0,
        tilt: tilt ?? 0.0,
      );
  ml.MapCamera toMapCamera({double? zoom, double? bearing, double? pitch}) => ml.MapCamera(
        center: ml.Position(latitude, longitude),
        zoom: zoom ?? 0.0,
        bearing: bearing ?? 0.0,
        pitch: pitch ?? 0.0,
      );

  @override
  String toString() {
    return 'Latitude: $latitude, Longitude: $longitude';
  }

  GeoPoint operator -(Object other) {
    if (other is GeoPoint) {
      return GeoPoint(latitude - other.latitude, longitude - other.longitude);
    }
    return GeoPoint(latitude, longitude);
  }

  GeoPoint operator +(Object other) {
    if (other is GeoPoint) {
      return GeoPoint(latitude + other.latitude, longitude + other.longitude);
    }
    return GeoPoint(latitude, longitude);
  }

  GeoPoint operator -() {
    return GeoPoint(-latitude, -longitude);
  }
}
