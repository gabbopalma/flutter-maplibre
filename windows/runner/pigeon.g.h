// Autogenerated from Pigeon (v22.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#ifndef PIGEON_PIGEON_G_H_
#define PIGEON_PIGEON_G_H_
#include <flutter/basic_message_channel.h>
#include <flutter/binary_messenger.h>
#include <flutter/encodable_value.h>
#include <flutter/standard_message_codec.h>

#include <map>
#include <optional>
#include <string>

namespace pigeon_maplibre {


// Generated class from Pigeon.

class FlutterError {
 public:
  explicit FlutterError(const std::string& code)
    : code_(code) {}
  explicit FlutterError(const std::string& code, const std::string& message)
    : code_(code), message_(message) {}
  explicit FlutterError(const std::string& code, const std::string& message, const flutter::EncodableValue& details)
    : code_(code), message_(message), details_(details) {}

  const std::string& code() const { return code_; }
  const std::string& message() const { return message_; }
  const flutter::EncodableValue& details() const { return details_; }

 private:
  std::string code_;
  std::string message_;
  flutter::EncodableValue details_;
};

template<class T> class ErrorOr {
 public:
  ErrorOr(const T& rhs) : v_(rhs) {}
  ErrorOr(const T&& rhs) : v_(std::move(rhs)) {}
  ErrorOr(const FlutterError& rhs) : v_(rhs) {}
  ErrorOr(const FlutterError&& rhs) : v_(std::move(rhs)) {}

  bool has_error() const { return std::holds_alternative<FlutterError>(v_); }
  const T& value() const { return std::get<T>(v_); };
  const FlutterError& error() const { return std::get<FlutterError>(v_); };

 private:
  friend class MapLibrePigeon;
  ErrorOr() = default;
  T TakeValue() && { return std::get<T>(std::move(v_)); }

  std::variant<T, FlutterError> v_;
};



// Generated class from Pigeon that represents data sent in messages.
class LngLat {
 public:
  // Constructs an object setting all fields.
  explicit LngLat(
    double lng,
    double lat);

  double lng() const;
  void set_lng(double value_arg);

  double lat() const;
  void set_lat(double value_arg);


 private:
  static LngLat FromEncodableList(const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class MapLibrePigeon;
  friend class PigeonInternalCodecSerializer;
  double lng_;
  double lat_;

};


// Generated class from Pigeon that represents data sent in messages.
class ScreenLocation {
 public:
  // Constructs an object setting all fields.
  explicit ScreenLocation(
    double x,
    double y);

  double x() const;
  void set_x(double value_arg);

  double y() const;
  void set_y(double value_arg);


 private:
  static ScreenLocation FromEncodableList(const flutter::EncodableList& list);
  flutter::EncodableList ToEncodableList() const;
  friend class MapLibrePigeon;
  friend class PigeonInternalCodecSerializer;
  double x_;
  double y_;

};


class PigeonInternalCodecSerializer : public flutter::StandardCodecSerializer {
 public:
  PigeonInternalCodecSerializer();
  inline static PigeonInternalCodecSerializer& GetInstance() {
    static PigeonInternalCodecSerializer sInstance;
    return sInstance;
  }

  void WriteValue(
    const flutter::EncodableValue& value,
    flutter::ByteStreamWriter* stream) const override;

 protected:
  flutter::EncodableValue ReadValueOfType(
    uint8_t type,
    flutter::ByteStreamReader* stream) const override;

};

// Generated interface from Pigeon that represents a handler of messages from Flutter.
class MapLibrePigeon {
 public:
  MapLibrePigeon(const MapLibrePigeon&) = delete;
  MapLibrePigeon& operator=(const MapLibrePigeon&) = delete;
  virtual ~MapLibrePigeon() {}
  virtual void JumpTo(
    const LngLat& center,
    const double* zoom,
    const double* bearing,
    const double* pitch,
    std::function<void(std::optional<FlutterError> reply)> result) = 0;
  virtual void FlyTo(
    const LngLat& center,
    const double* zoom,
    const double* bearing,
    const double* pitch,
    std::function<void(std::optional<FlutterError> reply)> result) = 0;
  virtual void ToScreenLocation(
    double lng,
    double lat,
    std::function<void(ErrorOr<ScreenLocation> reply)> result) = 0;
  virtual void ToLngLat(
    double x,
    double y,
    std::function<void(ErrorOr<LngLat> reply)> result) = 0;

  // The codec used by MapLibrePigeon.
  static const flutter::StandardMessageCodec& GetCodec();
  // Sets up an instance of `MapLibrePigeon` to handle messages through the `binary_messenger`.
  static void SetUp(
    flutter::BinaryMessenger* binary_messenger,
    MapLibrePigeon* api);
  static void SetUp(
    flutter::BinaryMessenger* binary_messenger,
    MapLibrePigeon* api,
    const std::string& message_channel_suffix);
  static flutter::EncodableValue WrapError(std::string_view error_message);
  static flutter::EncodableValue WrapError(const FlutterError& error);

 protected:
  MapLibrePigeon() = default;

};
}  // namespace pigeon_maplibre
#endif  // PIGEON_PIGEON_G_H_
