// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: public_member_api_docs
// ignore_for_file: require_trailing_commas
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: avoid_field_initializers_in_const_classes
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file: sort_constructors_first
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: sort_unnamed_constructors_first
// ignore_for_file: always_use_package_imports
// ignore_for_file: use_late_for_private_fields_and_variables
// ignore_for_file: one_member_abstracts
// ignore_for_file: always_put_required_named_parameters_first

// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: argument_type_not_assignable
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: doc_directive_unknown
// ignore_for_file: file_names
// ignore_for_file: inference_failure_on_untyped_parameter
// ignore_for_file: invalid_internal_annotation
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: library_prefixes
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_library_prefixes
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: only_throw_errors
// ignore_for_file: overridden_fields
// ignore_for_file: prefer_double_quotes
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name
// ignore_for_file: use_super_parameters

import 'dart:core' show Object, String, bool, double, int;
import 'dart:core' as _$core;

import 'package:jni/_internal.dart' as _$jni;
import 'package:jni/jni.dart' as _$jni;

import '../camera/CameraPosition.dart' as cameraposition_;

import '../camera/CameraUpdate.dart' as cameraupdate_;

import 'MapLibreMap.dart' as maplibremap_;

/// from: `org.maplibre.android.maps.Transform`
class Transform extends _$jni.JObject {
  @_$jni.internal
  @_$core.override
  final _$jni.JObjType<Transform> $type;

  @_$jni.internal
  Transform.fromReference(
    _$jni.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class =
      _$jni.JClass.forName(r'org/maplibre/android/maps/Transform');

  /// The type which includes information such as the signature of this class.
  static const type = $Transform$Type();
  static final _id_getCameraPosition = _class.instanceMethodId(
    r'getCameraPosition',
    r'()Lorg/maplibre/android/camera/CameraPosition;',
  );

  static final _getCameraPosition = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                _$jni.Pointer<_$jni.Void>,
                _$jni.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(
            _$jni.Pointer<_$jni.Void>,
            _$jni.JMethodIDPtr,
          )>();

  /// from: `public final org.maplibre.android.camera.CameraPosition getCameraPosition()`
  /// The returned object must be released after use, by calling the [release] method.
  cameraposition_.CameraPosition getCameraPosition() {
    return _getCameraPosition(
            reference.pointer, _id_getCameraPosition as _$jni.JMethodIDPtr)
        .object(const cameraposition_.$CameraPosition$Type());
  }

  static final _id_onCameraDidChange = _class.instanceMethodId(
    r'onCameraDidChange',
    r'(Z)V',
  );

  static final _onCameraDidChange = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JThrowablePtr Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<(_$jni.Int32,)>)>>('globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, int)>();

  /// from: `public void onCameraDidChange(boolean z)`
  void onCameraDidChange(
    bool z,
  ) {
    _onCameraDidChange(reference.pointer,
            _id_onCameraDidChange as _$jni.JMethodIDPtr, z ? 1 : 0)
        .check();
  }

  static final _id_moveCamera = _class.instanceMethodId(
    r'moveCamera',
    r'(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V',
  );

  static final _moveCamera = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JThrowablePtr Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<
                      (
                        _$jni.Pointer<_$jni.Void>,
                        _$jni.Pointer<_$jni.Void>,
                        _$jni.Pointer<_$jni.Void>
                      )>)>>('globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(
              _$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr,
              _$jni.Pointer<_$jni.Void>,
              _$jni.Pointer<_$jni.Void>,
              _$jni.Pointer<_$jni.Void>)>();

  /// from: `public final void moveCamera(org.maplibre.android.maps.MapLibreMap mapLibreMap, org.maplibre.android.camera.CameraUpdate cameraUpdate, org.maplibre.android.maps.MapLibreMap$CancelableCallback cancelableCallback)`
  void moveCamera(
    maplibremap_.MapLibreMap mapLibreMap,
    cameraupdate_.CameraUpdate cameraUpdate,
    maplibremap_.MapLibreMap_CancelableCallback cancelableCallback,
  ) {
    _moveCamera(
            reference.pointer,
            _id_moveCamera as _$jni.JMethodIDPtr,
            mapLibreMap.reference.pointer,
            cameraUpdate.reference.pointer,
            cancelableCallback.reference.pointer)
        .check();
  }

  static final _id_animateCamera = _class.instanceMethodId(
    r'animateCamera',
    r'(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V',
  );

  static final _animateCamera = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JThrowablePtr Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<
                      (
                        _$jni.Pointer<_$jni.Void>,
                        _$jni.Pointer<_$jni.Void>,
                        _$jni.Int32,
                        _$jni.Pointer<_$jni.Void>
                      )>)>>('globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(
              _$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr,
              _$jni.Pointer<_$jni.Void>,
              _$jni.Pointer<_$jni.Void>,
              int,
              _$jni.Pointer<_$jni.Void>)>();

  /// from: `public final void animateCamera(org.maplibre.android.maps.MapLibreMap mapLibreMap, org.maplibre.android.camera.CameraUpdate cameraUpdate, int i, org.maplibre.android.maps.MapLibreMap$CancelableCallback cancelableCallback)`
  void animateCamera(
    maplibremap_.MapLibreMap mapLibreMap,
    cameraupdate_.CameraUpdate cameraUpdate,
    int i,
    maplibremap_.MapLibreMap_CancelableCallback cancelableCallback,
  ) {
    _animateCamera(
            reference.pointer,
            _id_animateCamera as _$jni.JMethodIDPtr,
            mapLibreMap.reference.pointer,
            cameraUpdate.reference.pointer,
            i,
            cancelableCallback.reference.pointer)
        .check();
  }
}

final class $Transform$Type extends _$jni.JObjType<Transform> {
  @_$jni.internal
  const $Transform$Type();

  @_$jni.internal
  @_$core.override
  String get signature => r'Lorg/maplibre/android/maps/Transform;';

  @_$jni.internal
  @_$core.override
  Transform fromReference(_$jni.JReference reference) =>
      Transform.fromReference(reference);

  @_$jni.internal
  @_$core.override
  _$jni.JObjType get superType => const _$jni.JObjectType();

  @_$jni.internal
  @_$core.override
  final superCount = 1;

  @_$core.override
  int get hashCode => ($Transform$Type).hashCode;

  @_$core.override
  bool operator ==(Object other) {
    return other.runtimeType == ($Transform$Type) && other is $Transform$Type;
  }
}