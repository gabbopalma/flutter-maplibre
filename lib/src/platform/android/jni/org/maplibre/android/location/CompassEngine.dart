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

import 'CompassListener.dart' as compasslistener_;

/// from: `org.maplibre.android.location.CompassEngine`
class CompassEngine extends _$jni.JObject {
  @_$jni.internal
  @_$core.override
  final _$jni.JObjType<CompassEngine> $type;

  @_$jni.internal
  CompassEngine.fromReference(
    _$jni.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class =
      _$jni.JClass.forName(r'org/maplibre/android/location/CompassEngine');

  /// The type which includes information such as the signature of this class.
  static const type = $CompassEngine$Type();
  static final _id_addCompassListener = _class.instanceMethodId(
    r'addCompassListener',
    r'(Lorg/maplibre/android/location/CompassListener;)V',
  );

  static final _addCompassListener = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public abstract void addCompassListener(org.maplibre.android.location.CompassListener compassListener)`
  void addCompassListener(
    compasslistener_.CompassListener compassListener,
  ) {
    _addCompassListener(
            reference.pointer,
            _id_addCompassListener as _$jni.JMethodIDPtr,
            compassListener.reference.pointer)
        .check();
  }

  static final _id_removeCompassListener = _class.instanceMethodId(
    r'removeCompassListener',
    r'(Lorg/maplibre/android/location/CompassListener;)V',
  );

  static final _removeCompassListener = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public abstract void removeCompassListener(org.maplibre.android.location.CompassListener compassListener)`
  void removeCompassListener(
    compasslistener_.CompassListener compassListener,
  ) {
    _removeCompassListener(
            reference.pointer,
            _id_removeCompassListener as _$jni.JMethodIDPtr,
            compassListener.reference.pointer)
        .check();
  }

  static final _id_getLastHeading = _class.instanceMethodId(
    r'getLastHeading',
    r'()F',
  );

  static final _getLastHeading = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                _$jni.Pointer<_$jni.Void>,
                _$jni.JMethodIDPtr,
              )>>('globalEnv_CallFloatMethod')
      .asFunction<
          _$jni.JniResult Function(
            _$jni.Pointer<_$jni.Void>,
            _$jni.JMethodIDPtr,
          )>();

  /// from: `public abstract float getLastHeading()`
  double getLastHeading() {
    return _getLastHeading(
            reference.pointer, _id_getLastHeading as _$jni.JMethodIDPtr)
        .float;
  }

  static final _id_getLastAccuracySensorStatus = _class.instanceMethodId(
    r'getLastAccuracySensorStatus',
    r'()I',
  );

  static final _getLastAccuracySensorStatus =
      _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                    _$jni.Pointer<_$jni.Void>,
                    _$jni.JMethodIDPtr,
                  )>>('globalEnv_CallIntMethod')
          .asFunction<
              _$jni.JniResult Function(
                _$jni.Pointer<_$jni.Void>,
                _$jni.JMethodIDPtr,
              )>();

  /// from: `public abstract int getLastAccuracySensorStatus()`
  int getLastAccuracySensorStatus() {
    return _getLastAccuracySensorStatus(reference.pointer,
            _id_getLastAccuracySensorStatus as _$jni.JMethodIDPtr)
        .integer;
  }

  /// Maps a specific port to the implemented interface.
  static final _$core.Map<int, $CompassEngine> _$impls = {};
  static _$jni.JObjectPtr _$invoke(
    int port,
    _$jni.JObjectPtr descriptor,
    _$jni.JObjectPtr args,
  ) {
    return _$invokeMethod(
      port,
      _$jni.MethodInvocation.fromAddresses(
        0,
        descriptor.address,
        args.address,
      ),
    );
  }

  static final _$jni.Pointer<
          _$jni.NativeFunction<
              _$jni.JObjectPtr Function(
                  _$jni.Int64, _$jni.JObjectPtr, _$jni.JObjectPtr)>>
      _$invokePointer = _$jni.Pointer.fromFunction(_$invoke);

  static _$jni.Pointer<_$jni.Void> _$invokeMethod(
    int $p,
    _$jni.MethodInvocation $i,
  ) {
    try {
      final $d = $i.methodDescriptor.toDartString(releaseOriginal: true);
      final $a = $i.args;
      if ($d ==
          r'addCompassListener(Lorg/maplibre/android/location/CompassListener;)V') {
        _$impls[$p]!.addCompassListener(
          $a[0].as(const compasslistener_.$CompassListener$Type(),
              releaseOriginal: true),
        );
        return _$jni.nullptr;
      }
      if ($d ==
          r'removeCompassListener(Lorg/maplibre/android/location/CompassListener;)V') {
        _$impls[$p]!.removeCompassListener(
          $a[0].as(const compasslistener_.$CompassListener$Type(),
              releaseOriginal: true),
        );
        return _$jni.nullptr;
      }
      if ($d == r'getLastHeading()F') {
        final $r = _$impls[$p]!.getLastHeading();
        return _$jni.JFloat($r).reference.toPointer();
      }
      if ($d == r'getLastAccuracySensorStatus()I') {
        final $r = _$impls[$p]!.getLastAccuracySensorStatus();
        return _$jni.JInteger($r).reference.toPointer();
      }
    } catch (e) {
      return _$jni.ProtectedJniExtensions.newDartException(e);
    }
    return _$jni.nullptr;
  }

  static void implementIn(
    _$jni.JImplementer implementer,
    $CompassEngine $impl,
  ) {
    late final _$jni.RawReceivePort $p;
    $p = _$jni.RawReceivePort(($m) {
      if ($m == null) {
        _$impls.remove($p.sendPort.nativePort);
        $p.close();
        return;
      }
      final $i = _$jni.MethodInvocation.fromMessage($m);
      final $r = _$invokeMethod($p.sendPort.nativePort, $i);
      _$jni.ProtectedJniExtensions.returnResult($i.result, $r);
    });
    implementer.add(
      r'org.maplibre.android.location.CompassEngine',
      $p,
      _$invokePointer,
      [
        if ($impl.addCompassListener$async)
          r'addCompassListener(Lorg/maplibre/android/location/CompassListener;)V',
        if ($impl.removeCompassListener$async)
          r'removeCompassListener(Lorg/maplibre/android/location/CompassListener;)V',
      ],
    );
    final $a = $p.sendPort.nativePort;
    _$impls[$a] = $impl;
  }

  factory CompassEngine.implement(
    $CompassEngine $impl,
  ) {
    final $i = _$jni.JImplementer();
    implementIn($i, $impl);
    return CompassEngine.fromReference(
      $i.implementReference(),
    );
  }
}

abstract base mixin class $CompassEngine {
  factory $CompassEngine({
    required void Function(compasslistener_.CompassListener compassListener)
        addCompassListener,
    bool addCompassListener$async,
    required void Function(compasslistener_.CompassListener compassListener)
        removeCompassListener,
    bool removeCompassListener$async,
    required double Function() getLastHeading,
    required int Function() getLastAccuracySensorStatus,
  }) = _$CompassEngine;

  void addCompassListener(compasslistener_.CompassListener compassListener);
  bool get addCompassListener$async => false;
  void removeCompassListener(compasslistener_.CompassListener compassListener);
  bool get removeCompassListener$async => false;
  double getLastHeading();
  int getLastAccuracySensorStatus();
}

final class _$CompassEngine with $CompassEngine {
  _$CompassEngine({
    required void Function(compasslistener_.CompassListener compassListener)
        addCompassListener,
    this.addCompassListener$async = false,
    required void Function(compasslistener_.CompassListener compassListener)
        removeCompassListener,
    this.removeCompassListener$async = false,
    required double Function() getLastHeading,
    required int Function() getLastAccuracySensorStatus,
  })  : _addCompassListener = addCompassListener,
        _removeCompassListener = removeCompassListener,
        _getLastHeading = getLastHeading,
        _getLastAccuracySensorStatus = getLastAccuracySensorStatus;

  final void Function(compasslistener_.CompassListener compassListener)
      _addCompassListener;
  final bool addCompassListener$async;
  final void Function(compasslistener_.CompassListener compassListener)
      _removeCompassListener;
  final bool removeCompassListener$async;
  final double Function() _getLastHeading;
  final int Function() _getLastAccuracySensorStatus;

  void addCompassListener(compasslistener_.CompassListener compassListener) {
    return _addCompassListener(compassListener);
  }

  void removeCompassListener(compasslistener_.CompassListener compassListener) {
    return _removeCompassListener(compassListener);
  }

  double getLastHeading() {
    return _getLastHeading();
  }

  int getLastAccuracySensorStatus() {
    return _getLastAccuracySensorStatus();
  }
}

final class $CompassEngine$Type extends _$jni.JObjType<CompassEngine> {
  @_$jni.internal
  const $CompassEngine$Type();

  @_$jni.internal
  @_$core.override
  String get signature => r'Lorg/maplibre/android/location/CompassEngine;';

  @_$jni.internal
  @_$core.override
  CompassEngine fromReference(_$jni.JReference reference) =>
      CompassEngine.fromReference(reference);

  @_$jni.internal
  @_$core.override
  _$jni.JObjType get superType => const _$jni.JObjectType();

  @_$jni.internal
  @_$core.override
  final superCount = 1;

  @_$core.override
  int get hashCode => ($CompassEngine$Type).hashCode;

  @_$core.override
  bool operator ==(Object other) {
    return other.runtimeType == ($CompassEngine$Type) &&
        other is $CompassEngine$Type;
  }
}
