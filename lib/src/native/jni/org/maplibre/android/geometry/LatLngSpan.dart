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

/// from: `org.maplibre.android.geometry.LatLngSpan$Companion`
class LatLngSpan_Companion extends _$jni.JObject {
  @_$jni.internal
  @_$core.override
  final _$jni.JObjType<LatLngSpan_Companion> $type;

  @_$jni.internal
  LatLngSpan_Companion.fromReference(
    _$jni.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class = _$jni.JClass.forName(
      r'org/maplibre/android/geometry/LatLngSpan$Companion');

  /// The type which includes information such as the signature of this class.
  static const type = $LatLngSpan_Companion$Type();
  static final _id_new$ = _class.constructorId(
    r'(Lkotlin/jvm/internal/DefaultConstructorMarker;)V',
  );

  static final _new$ = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_NewObject')
      .asFunction<
          _$jni.JniResult Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `synthetic public void <init>(kotlin.jvm.internal.DefaultConstructorMarker defaultConstructorMarker)`
  /// The returned object must be released after use, by calling the [release] method.
  factory LatLngSpan_Companion(
    _$jni.JObject defaultConstructorMarker,
  ) {
    return LatLngSpan_Companion.fromReference(_new$(
            _class.reference.pointer,
            _id_new$ as _$jni.JMethodIDPtr,
            defaultConstructorMarker.reference.pointer)
        .reference);
  }
}

final class $LatLngSpan_Companion$Type
    extends _$jni.JObjType<LatLngSpan_Companion> {
  @_$jni.internal
  const $LatLngSpan_Companion$Type();

  @_$jni.internal
  @_$core.override
  String get signature =>
      r'Lorg/maplibre/android/geometry/LatLngSpan$Companion;';

  @_$jni.internal
  @_$core.override
  LatLngSpan_Companion fromReference(_$jni.JReference reference) =>
      LatLngSpan_Companion.fromReference(reference);

  @_$jni.internal
  @_$core.override
  _$jni.JObjType get superType => const _$jni.JObjectType();

  @_$jni.internal
  @_$core.override
  final superCount = 1;

  @_$core.override
  int get hashCode => ($LatLngSpan_Companion$Type).hashCode;

  @_$core.override
  bool operator ==(Object other) {
    return other.runtimeType == ($LatLngSpan_Companion$Type) &&
        other is $LatLngSpan_Companion$Type;
  }
}

/// from: `org.maplibre.android.geometry.LatLngSpan`
class LatLngSpan extends _$jni.JObject {
  @_$jni.internal
  @_$core.override
  final _$jni.JObjType<LatLngSpan> $type;

  @_$jni.internal
  LatLngSpan.fromReference(
    _$jni.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class =
      _$jni.JClass.forName(r'org/maplibre/android/geometry/LatLngSpan');

  /// The type which includes information such as the signature of this class.
  static const type = $LatLngSpan$Type();
  static final _id_Companion = _class.staticFieldId(
    r'Companion',
    r'Lorg/maplibre/android/geometry/LatLngSpan$Companion;',
  );

  /// from: `static public final org.maplibre.android.geometry.LatLngSpan$Companion Companion`
  /// The returned object must be released after use, by calling the [release] method.
  static LatLngSpan_Companion get Companion =>
      _id_Companion.get(_class, const $LatLngSpan_Companion$Type());

  static final _id_CREATOR = _class.staticFieldId(
    r'CREATOR',
    r'Landroid/os/Parcelable$Creator;',
  );

  /// from: `static public final android.os.Parcelable$Creator CREATOR`
  /// The returned object must be released after use, by calling the [release] method.
  static _$jni.JObject get CREATOR =>
      _id_CREATOR.get(_class, const _$jni.JObjectType());

  static final _id_getLatitudeSpan = _class.instanceMethodId(
    r'getLatitudeSpan',
    r'()D',
  );

  static final _getLatitudeSpan = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                _$jni.Pointer<_$jni.Void>,
                _$jni.JMethodIDPtr,
              )>>('globalEnv_CallDoubleMethod')
      .asFunction<
          _$jni.JniResult Function(
            _$jni.Pointer<_$jni.Void>,
            _$jni.JMethodIDPtr,
          )>();

  /// from: `public final double getLatitudeSpan()`
  double getLatitudeSpan() {
    return _getLatitudeSpan(
            reference.pointer, _id_getLatitudeSpan as _$jni.JMethodIDPtr)
        .doubleFloat;
  }

  static final _id_setLatitudeSpan = _class.instanceMethodId(
    r'setLatitudeSpan',
    r'(D)V',
  );

  static final _setLatitudeSpan = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JThrowablePtr Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<(_$jni.Double,)>)>>('globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, double)>();

  /// from: `public final void setLatitudeSpan(double d)`
  void setLatitudeSpan(
    double d,
  ) {
    _setLatitudeSpan(
            reference.pointer, _id_setLatitudeSpan as _$jni.JMethodIDPtr, d)
        .check();
  }

  static final _id_getLongitudeSpan = _class.instanceMethodId(
    r'getLongitudeSpan',
    r'()D',
  );

  static final _getLongitudeSpan = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                _$jni.Pointer<_$jni.Void>,
                _$jni.JMethodIDPtr,
              )>>('globalEnv_CallDoubleMethod')
      .asFunction<
          _$jni.JniResult Function(
            _$jni.Pointer<_$jni.Void>,
            _$jni.JMethodIDPtr,
          )>();

  /// from: `public final double getLongitudeSpan()`
  double getLongitudeSpan() {
    return _getLongitudeSpan(
            reference.pointer, _id_getLongitudeSpan as _$jni.JMethodIDPtr)
        .doubleFloat;
  }

  static final _id_setLongitudeSpan = _class.instanceMethodId(
    r'setLongitudeSpan',
    r'(D)V',
  );

  static final _setLongitudeSpan = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JThrowablePtr Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<(_$jni.Double,)>)>>('globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, double)>();

  /// from: `public final void setLongitudeSpan(double d)`
  void setLongitudeSpan(
    double d,
  ) {
    _setLongitudeSpan(
            reference.pointer, _id_setLongitudeSpan as _$jni.JMethodIDPtr, d)
        .check();
  }

  static final _id_new$ = _class.constructorId(
    r'(DD)V',
  );

  static final _new$ = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Double, _$jni.Double)>)>>(
          'globalEnv_NewObject')
      .asFunction<
          _$jni.JniResult Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, double, double)>();

  /// from: `public void <init>(double d, double d1)`
  /// The returned object must be released after use, by calling the [release] method.
  factory LatLngSpan(
    double d,
    double d1,
  ) {
    return LatLngSpan.fromReference(
        _new$(_class.reference.pointer, _id_new$ as _$jni.JMethodIDPtr, d, d1)
            .reference);
  }

  static final _id_equals = _class.instanceMethodId(
    r'equals',
    r'(Ljava/lang/Object;)Z',
  );

  static final _equals = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallBooleanMethod')
      .asFunction<
          _$jni.JniResult Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public boolean equals(java.lang.Object object)`
  bool equals(
    _$jni.JObject object,
  ) {
    return _equals(reference.pointer, _id_equals as _$jni.JMethodIDPtr,
            object.reference.pointer)
        .boolean;
  }

  static final _id_describeContents = _class.instanceMethodId(
    r'describeContents',
    r'()I',
  );

  static final _describeContents = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public int describeContents()`
  int describeContents() {
    return _describeContents(
            reference.pointer, _id_describeContents as _$jni.JMethodIDPtr)
        .integer;
  }

  static final _id_writeToParcel = _class.instanceMethodId(
    r'writeToParcel',
    r'(Landroid/os/Parcel;I)V',
  );

  static final _writeToParcel = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni
                          .VarArgs<(_$jni.Pointer<_$jni.Void>, _$jni.Int32)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>, int)>();

  /// from: `public void writeToParcel(android.os.Parcel parcel, int i)`
  void writeToParcel(
    _$jni.JObject parcel,
    int i,
  ) {
    _writeToParcel(reference.pointer, _id_writeToParcel as _$jni.JMethodIDPtr,
            parcel.reference.pointer, i)
        .check();
  }

  static final _id_hashCode$1 = _class.instanceMethodId(
    r'hashCode',
    r'()I',
  );

  static final _hashCode$1 = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public int hashCode()`
  int hashCode$1() {
    return _hashCode$1(reference.pointer, _id_hashCode$1 as _$jni.JMethodIDPtr)
        .integer;
  }

  static final _id_new$1 = _class.constructorId(
    r'(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V',
  );

  static final _new$1 = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<
                      (
                        _$jni.Pointer<_$jni.Void>,
                        _$jni.Pointer<_$jni.Void>
                      )>)>>('globalEnv_NewObject')
      .asFunction<
          _$jni.JniResult Function(
              _$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr,
              _$jni.Pointer<_$jni.Void>,
              _$jni.Pointer<_$jni.Void>)>();

  /// from: `synthetic public void <init>(android.os.Parcel parcel, kotlin.jvm.internal.DefaultConstructorMarker defaultConstructorMarker)`
  /// The returned object must be released after use, by calling the [release] method.
  factory LatLngSpan.new$1(
    _$jni.JObject parcel,
    _$jni.JObject defaultConstructorMarker,
  ) {
    return LatLngSpan.fromReference(_new$1(
            _class.reference.pointer,
            _id_new$1 as _$jni.JMethodIDPtr,
            parcel.reference.pointer,
            defaultConstructorMarker.reference.pointer)
        .reference);
  }
}

final class $LatLngSpan$Type extends _$jni.JObjType<LatLngSpan> {
  @_$jni.internal
  const $LatLngSpan$Type();

  @_$jni.internal
  @_$core.override
  String get signature => r'Lorg/maplibre/android/geometry/LatLngSpan;';

  @_$jni.internal
  @_$core.override
  LatLngSpan fromReference(_$jni.JReference reference) =>
      LatLngSpan.fromReference(reference);

  @_$jni.internal
  @_$core.override
  _$jni.JObjType get superType => const _$jni.JObjectType();

  @_$jni.internal
  @_$core.override
  final superCount = 1;

  @_$core.override
  int get hashCode => ($LatLngSpan$Type).hashCode;

  @_$core.override
  bool operator ==(Object other) {
    return other.runtimeType == ($LatLngSpan$Type) && other is $LatLngSpan$Type;
  }
}