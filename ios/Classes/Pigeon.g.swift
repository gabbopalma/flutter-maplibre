// Autogenerated from Pigeon (v22.4.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

/// Error class for passing custom error details to Dart side.
final class PigeonError: Error {
  let code: String
  let message: String?
  let details: Any?

  init(code: String, message: String?, details: Any?) {
    self.code = code
    self.message = message
    self.details = details
  }

  var localizedDescription: String {
    return
      "PigeonError(code: \(code), message: \(message ?? "<nil>"), details: \(details ?? "<nil>")"
      }
}

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let pigeonError = error as? PigeonError {
    return [
      pigeonError.code,
      pigeonError.message,
      pigeonError.details,
    ]
  }
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func createConnectionError(withChannelName channelName: String) -> PigeonError {
  return PigeonError(code: "channel-error", message: "Unable to establish connection on channel: '\(channelName)'.", details: "")
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

/// Render mode of the user location on the map.
enum RenderMode: Int {
  /// Show user location, ignore bearing.
  case normal = 0
  /// Tracking the user location with bearing considered from the compass
  /// engine of the device.
  case compass = 1
  /// Tracking the user location with bearing considered from the movement of
  /// the user.
  case gps = 2
}

/// The map options define initial values for the MapLibre map.
///
/// Generated class from Pigeon that represents data sent in messages.
struct MapOptions {
  /// The URL of the used map style.
  var style: String
  /// The initial zoom level of the map.
  var zoom: Double
  /// The initial tilt of the map.
  var tilt: Double
  /// The initial bearing of the map.
  var bearing: Double
  /// The initial center coordinates of the map.
  var center: LngLat? = nil
  /// If the native map should listen to click events.
  var listensOnClick: Bool
  /// If the native map should listen to long click events.
  var listensOnLongClick: Bool



  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> MapOptions? {
    let style = pigeonVar_list[0] as! String
    let zoom = pigeonVar_list[1] as! Double
    let tilt = pigeonVar_list[2] as! Double
    let bearing = pigeonVar_list[3] as! Double
    let center: LngLat? = nilOrValue(pigeonVar_list[4])
    let listensOnClick = pigeonVar_list[5] as! Bool
    let listensOnLongClick = pigeonVar_list[6] as! Bool

    return MapOptions(
      style: style,
      zoom: zoom,
      tilt: tilt,
      bearing: bearing,
      center: center,
      listensOnClick: listensOnClick,
      listensOnLongClick: listensOnLongClick
    )
  }
  func toList() -> [Any?] {
    return [
      style,
      zoom,
      tilt,
      bearing,
      center,
      listensOnClick,
      listensOnLongClick,
    ]
  }
}

/// A longitude/latitude coordinate object.
///
/// Generated class from Pigeon that represents data sent in messages.
struct LngLat {
  /// The longitude
  var lng: Double
  /// The latitude
  var lat: Double



  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> LngLat? {
    let lng = pigeonVar_list[0] as! Double
    let lat = pigeonVar_list[1] as! Double

    return LngLat(
      lng: lng,
      lat: lat
    )
  }
  func toList() -> [Any?] {
    return [
      lng,
      lat,
    ]
  }
}

/// A pixel location / location on the device screen.
///
/// Generated class from Pigeon that represents data sent in messages.
struct ScreenLocation {
  /// The x coordinate
  var x: Double
  /// The y coordinate
  var y: Double



  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> ScreenLocation? {
    let x = pigeonVar_list[0] as! Double
    let y = pigeonVar_list[1] as! Double

    return ScreenLocation(
      x: x,
      y: y
    )
  }
  func toList() -> [Any?] {
    return [
      x,
      y,
    ]
  }
}

/// The current position of the map camera.
///
/// Generated class from Pigeon that represents data sent in messages.
struct MapCamera {
  var center: LngLat
  var zoom: Double
  var tilt: Double
  var bearing: Double



  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> MapCamera? {
    let center = pigeonVar_list[0] as! LngLat
    let zoom = pigeonVar_list[1] as! Double
    let tilt = pigeonVar_list[2] as! Double
    let bearing = pigeonVar_list[3] as! Double

    return MapCamera(
      center: center,
      zoom: zoom,
      tilt: tilt,
      bearing: bearing
    )
  }
  func toList() -> [Any?] {
    return [
      center,
      zoom,
      tilt,
      bearing,
    ]
  }
}

/// LatLng bound object
///
/// Generated class from Pigeon that represents data sent in messages.
struct LngLatBounds {
  var longitudeWest: Double
  var longitudeEast: Double
  var latitudeSouth: Double
  var latitudeNorth: Double



  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> LngLatBounds? {
    let longitudeWest = pigeonVar_list[0] as! Double
    let longitudeEast = pigeonVar_list[1] as! Double
    let latitudeSouth = pigeonVar_list[2] as! Double
    let latitudeNorth = pigeonVar_list[3] as! Double

    return LngLatBounds(
      longitudeWest: longitudeWest,
      longitudeEast: longitudeEast,
      latitudeSouth: latitudeSouth,
      latitudeNorth: latitudeNorth
    )
  }
  func toList() -> [Any?] {
    return [
      longitudeWest,
      longitudeEast,
      latitudeSouth,
      latitudeNorth,
    ]
  }
}

private class PigeonPigeonCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
    case 129:
      let enumResultAsInt: Int? = nilOrValue(self.readValue() as! Int?)
      if let enumResultAsInt = enumResultAsInt {
        return RenderMode(rawValue: enumResultAsInt)
      }
      return nil
    case 130:
      return MapOptions.fromList(self.readValue() as! [Any?])
    case 131:
      return LngLat.fromList(self.readValue() as! [Any?])
    case 132:
      return ScreenLocation.fromList(self.readValue() as! [Any?])
    case 133:
      return MapCamera.fromList(self.readValue() as! [Any?])
    case 134:
      return LngLatBounds.fromList(self.readValue() as! [Any?])
    default:
      return super.readValue(ofType: type)
    }
  }
}

private class PigeonPigeonCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? RenderMode {
      super.writeByte(129)
      super.writeValue(value.rawValue)
    } else if let value = value as? MapOptions {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else if let value = value as? LngLat {
      super.writeByte(131)
      super.writeValue(value.toList())
    } else if let value = value as? ScreenLocation {
      super.writeByte(132)
      super.writeValue(value.toList())
    } else if let value = value as? MapCamera {
      super.writeByte(133)
      super.writeValue(value.toList())
    } else if let value = value as? LngLatBounds {
      super.writeByte(134)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class PigeonPigeonCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return PigeonPigeonCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return PigeonPigeonCodecWriter(data: data)
  }
}

class PigeonPigeonCodec: FlutterStandardMessageCodec, @unchecked Sendable {
  static let shared = PigeonPigeonCodec(readerWriter: PigeonPigeonCodecReaderWriter())
}


/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol MapLibreHostApi {
  /// Move the viewport of the map to a new location without any animation.
  func jumpTo(center: LngLat?, zoom: Double?, bearing: Double?, pitch: Double?, completion: @escaping (Result<Void, Error>) -> Void)
  /// Animate the viewport of the map to a new location.
  func flyTo(center: LngLat?, zoom: Double?, bearing: Double?, pitch: Double?, durationMs: Int64, completion: @escaping (Result<Void, Error>) -> Void)
  /// Get the current camera position with the map center, zoom level, camera
  /// tilt and map rotation.
  func getCamera(completion: @escaping (Result<MapCamera, Error>) -> Void)
  /// Get the visible region of the current map camera.
  func getVisibleRegion(completion: @escaping (Result<LngLatBounds, Error>) -> Void)
  /// Convert a coordinate to a location on the screen.
  func toScreenLocation(lng: Double, lat: Double, completion: @escaping (Result<ScreenLocation, Error>) -> Void)
  /// Convert a screen location to a coordinate.
  func toLngLat(x: Double, y: Double, completion: @escaping (Result<LngLat, Error>) -> Void)
  /// Add a fill layer to the map style.
  func addFillLayer(id: String, sourceId: String, completion: @escaping (Result<Void, Error>) -> Void)
  /// Add a circle layer to the map style.
  func addCircleLayer(id: String, sourceId: String, completion: @escaping (Result<Void, Error>) -> Void)
  /// Add a GeoJSON source to the map style.
  func addGeoJsonSource(id: String, data: String, completion: @escaping (Result<Void, Error>) -> Void)
  /// Returns the distance spanned by one pixel at the specified latitude and
  /// current zoom level.
  func getMetersPerPixelAtLatitude(latitude: Double) throws -> Double
  /// Render the user location on the map.
  ///
  /// Returns true when it succeeds.
  func enableUserLocation(mode: RenderMode, completion: @escaping (Result<Bool, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class MapLibreHostApiSetup {
  static var codec: FlutterStandardMessageCodec { PigeonPigeonCodec.shared }
  /// Sets up an instance of `MapLibreHostApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: MapLibreHostApi?, messageChannelSuffix: String = "") {
    let channelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
    /// Move the viewport of the map to a new location without any animation.
    let jumpToChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.jumpTo\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      jumpToChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let centerArg: LngLat? = nilOrValue(args[0])
        let zoomArg: Double? = nilOrValue(args[1])
        let bearingArg: Double? = nilOrValue(args[2])
        let pitchArg: Double? = nilOrValue(args[3])
        api.jumpTo(center: centerArg, zoom: zoomArg, bearing: bearingArg, pitch: pitchArg) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      jumpToChannel.setMessageHandler(nil)
    }
    /// Animate the viewport of the map to a new location.
    let flyToChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.flyTo\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      flyToChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let centerArg: LngLat? = nilOrValue(args[0])
        let zoomArg: Double? = nilOrValue(args[1])
        let bearingArg: Double? = nilOrValue(args[2])
        let pitchArg: Double? = nilOrValue(args[3])
        let durationMsArg = args[4] as! Int64
        api.flyTo(center: centerArg, zoom: zoomArg, bearing: bearingArg, pitch: pitchArg, durationMs: durationMsArg) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      flyToChannel.setMessageHandler(nil)
    }
    /// Get the current camera position with the map center, zoom level, camera
    /// tilt and map rotation.
    let getCameraChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.getCamera\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getCameraChannel.setMessageHandler { _, reply in
        api.getCamera { result in
          switch result {
          case .success(let res):
            reply(wrapResult(res))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      getCameraChannel.setMessageHandler(nil)
    }
    /// Get the visible region of the current map camera.
    let getVisibleRegionChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.getVisibleRegion\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getVisibleRegionChannel.setMessageHandler { _, reply in
        api.getVisibleRegion { result in
          switch result {
          case .success(let res):
            reply(wrapResult(res))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      getVisibleRegionChannel.setMessageHandler(nil)
    }
    /// Convert a coordinate to a location on the screen.
    let toScreenLocationChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.toScreenLocation\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      toScreenLocationChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let lngArg = args[0] as! Double
        let latArg = args[1] as! Double
        api.toScreenLocation(lng: lngArg, lat: latArg) { result in
          switch result {
          case .success(let res):
            reply(wrapResult(res))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      toScreenLocationChannel.setMessageHandler(nil)
    }
    /// Convert a screen location to a coordinate.
    let toLngLatChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.toLngLat\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      toLngLatChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let xArg = args[0] as! Double
        let yArg = args[1] as! Double
        api.toLngLat(x: xArg, y: yArg) { result in
          switch result {
          case .success(let res):
            reply(wrapResult(res))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      toLngLatChannel.setMessageHandler(nil)
    }
    /// Add a fill layer to the map style.
    let addFillLayerChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.addFillLayer\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      addFillLayerChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let sourceIdArg = args[1] as! String
        api.addFillLayer(id: idArg, sourceId: sourceIdArg) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      addFillLayerChannel.setMessageHandler(nil)
    }
    /// Add a circle layer to the map style.
    let addCircleLayerChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.addCircleLayer\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      addCircleLayerChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let sourceIdArg = args[1] as! String
        api.addCircleLayer(id: idArg, sourceId: sourceIdArg) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      addCircleLayerChannel.setMessageHandler(nil)
    }
    /// Add a GeoJSON source to the map style.
    let addGeoJsonSourceChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.addGeoJsonSource\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      addGeoJsonSourceChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let dataArg = args[1] as! String
        api.addGeoJsonSource(id: idArg, data: dataArg) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      addGeoJsonSourceChannel.setMessageHandler(nil)
    }
    /// Returns the distance spanned by one pixel at the specified latitude and
    /// current zoom level.
    let getMetersPerPixelAtLatitudeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.getMetersPerPixelAtLatitude\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getMetersPerPixelAtLatitudeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let latitudeArg = args[0] as! Double
        do {
          let result = try api.getMetersPerPixelAtLatitude(latitude: latitudeArg)
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      getMetersPerPixelAtLatitudeChannel.setMessageHandler(nil)
    }
    /// Render the user location on the map.
    ///
    /// Returns true when it succeeds.
    let enableUserLocationChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.maplibre.MapLibreHostApi.enableUserLocation\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      enableUserLocationChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let modeArg = args[0] as! RenderMode
        api.enableUserLocation(mode: modeArg) { result in
          switch result {
          case .success(let res):
            reply(wrapResult(res))
          case .failure(let error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      enableUserLocationChannel.setMessageHandler(nil)
    }
  }
}
/// Generated protocol from Pigeon that represents Flutter messages that can be called from Swift.
protocol MapLibreFlutterApiProtocol {
  /// Get the map options from dart.
  func getOptions(completion: @escaping (Result<MapOptions, PigeonError>) -> Void)
  /// Callback for when the style has been loaded.
  func onStyleLoaded(completion: @escaping (Result<Void, PigeonError>) -> Void)
  /// Callback when the user clicks on the map.
  func onClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void)
  /// Callback when the user performs a secondary click on the map
  /// (e.g. by default a click with the right mouse button).
  func onSecondaryClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void)
  /// Callback when the user performs a double click on the map.
  func onDoubleClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void)
  /// Callback when the user performs a long lasting click on the map.
  func onLongClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void)
}
class MapLibreFlutterApi: MapLibreFlutterApiProtocol {
  private let binaryMessenger: FlutterBinaryMessenger
  private let messageChannelSuffix: String
  init(binaryMessenger: FlutterBinaryMessenger, messageChannelSuffix: String = "") {
    self.binaryMessenger = binaryMessenger
    self.messageChannelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
  }
  var codec: PigeonPigeonCodec {
    return PigeonPigeonCodec.shared
  }
  /// Get the map options from dart.
  func getOptions(completion: @escaping (Result<MapOptions, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.maplibre.MapLibreFlutterApi.getOptions\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage(nil) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else if listResponse[0] == nil {
        completion(.failure(PigeonError(code: "null-error", message: "Flutter api returned null value for non-null return value.", details: "")))
      } else {
        let result = listResponse[0] as! MapOptions
        completion(.success(result))
      }
    }
  }
  /// Callback for when the style has been loaded.
  func onStyleLoaded(completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.maplibre.MapLibreFlutterApi.onStyleLoaded\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage(nil) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
  /// Callback when the user clicks on the map.
  func onClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.maplibre.MapLibreFlutterApi.onClick\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([pointArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
  /// Callback when the user performs a secondary click on the map
  /// (e.g. by default a click with the right mouse button).
  func onSecondaryClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.maplibre.MapLibreFlutterApi.onSecondaryClick\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([pointArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
  /// Callback when the user performs a double click on the map.
  func onDoubleClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.maplibre.MapLibreFlutterApi.onDoubleClick\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([pointArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
  /// Callback when the user performs a long lasting click on the map.
  func onLongClick(point pointArg: LngLat, completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.maplibre.MapLibreFlutterApi.onLongClick\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([pointArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
}
