import 'package:flutter/foundation.dart';

/// LatLng bounds class.
///
/// {@category Basic}
@immutable
class LngLatBounds {
  /// Create a new [LngLatBounds] object.
  const LngLatBounds({
    required this.longitudeWest,
    required this.longitudeEast,
    required this.latitudeSouth,
    required this.latitudeNorth,
  });

  /// The minimum longitude, most west
  final double longitudeWest;

  /// The maximum longitude, most east
  final double longitudeEast;

  /// The minimum latitude, most south
  final double latitudeSouth;

  /// The maximum latitude, most north
  final double latitudeNorth;

  @override
  String toString() => 'LngLatBounds('
      'longitudeWest: $longitudeWest, '
      'longitudeEast: $longitudeEast, '
      'latitudeSouth: $latitudeSouth, '
      'latitudeNorth: $latitudeNorth)';

  /// Create a new [LngLatBounds] object by changing no, some or all values.
  LngLatBounds copyWith({
    double? longitudeWest,
    double? longitudeEast,
    double? latitudeSouth,
    double? latitudeNorth,
  }) =>
      LngLatBounds(
        longitudeWest: longitudeWest ?? this.longitudeWest,
        longitudeEast: longitudeEast ?? this.longitudeEast,
        latitudeSouth: latitudeSouth ?? this.latitudeSouth,
        latitudeNorth: latitudeNorth ?? this.latitudeNorth,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LngLatBounds &&
          runtimeType == other.runtimeType &&
          longitudeWest == other.longitudeWest &&
          longitudeEast == other.longitudeEast &&
          latitudeSouth == other.latitudeSouth &&
          latitudeNorth == other.latitudeNorth;

  @override
  int get hashCode =>
      Object.hash(longitudeWest, longitudeEast, latitudeSouth, latitudeNorth);
}
