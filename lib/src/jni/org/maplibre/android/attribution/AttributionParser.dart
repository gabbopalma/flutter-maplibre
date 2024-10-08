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

import 'Attribution.dart' as attribution_;

/// from: `org.maplibre.android.attribution.AttributionParser$Options`
class AttributionParser_Options extends _$jni.JObject {
  @_$jni.internal
  @_$core.override
  final _$jni.JObjType<AttributionParser_Options> $type;

  @_$jni.internal
  AttributionParser_Options.fromReference(
    _$jni.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class = _$jni.JClass.forName(
      r'org/maplibre/android/attribution/AttributionParser$Options');

  /// The type which includes information such as the signature of this class.
  static const type = $AttributionParser_Options$Type();
  static final _id_new$ = _class.constructorId(
    r'(Landroid/content/Context;)V',
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

  /// from: `public void <init>(android.content.Context context)`
  /// The returned object must be released after use, by calling the [release] method.
  factory AttributionParser_Options(
    _$jni.JObject context,
  ) {
    return AttributionParser_Options.fromReference(_new$(
            _class.reference.pointer,
            _id_new$ as _$jni.JMethodIDPtr,
            context.reference.pointer)
        .reference);
  }

  static final _id_withAttributionData = _class.instanceMethodId(
    r'withAttributionData',
    r'([Ljava/lang/String;)Lorg/maplibre/android/attribution/AttributionParser$Options;',
  );

  static final _withAttributionData = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public org.maplibre.android.attribution.AttributionParser$Options withAttributionData(java.lang.String[] strings)`
  /// The returned object must be released after use, by calling the [release] method.
  AttributionParser_Options withAttributionData(
    _$jni.JArray<_$jni.JString> strings,
  ) {
    return _withAttributionData(
            reference.pointer,
            _id_withAttributionData as _$jni.JMethodIDPtr,
            strings.reference.pointer)
        .object(const $AttributionParser_Options$Type());
  }

  static final _id_withImproveMap = _class.instanceMethodId(
    r'withImproveMap',
    r'(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;',
  );

  static final _withImproveMap = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<(_$jni.Int32,)>)>>('globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, int)>();

  /// from: `public org.maplibre.android.attribution.AttributionParser$Options withImproveMap(boolean z)`
  /// The returned object must be released after use, by calling the [release] method.
  AttributionParser_Options withImproveMap(
    bool z,
  ) {
    return _withImproveMap(reference.pointer,
            _id_withImproveMap as _$jni.JMethodIDPtr, z ? 1 : 0)
        .object(const $AttributionParser_Options$Type());
  }

  static final _id_withCopyrightSign = _class.instanceMethodId(
    r'withCopyrightSign',
    r'(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;',
  );

  static final _withCopyrightSign = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<(_$jni.Int32,)>)>>('globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, int)>();

  /// from: `public org.maplibre.android.attribution.AttributionParser$Options withCopyrightSign(boolean z)`
  /// The returned object must be released after use, by calling the [release] method.
  AttributionParser_Options withCopyrightSign(
    bool z,
  ) {
    return _withCopyrightSign(reference.pointer,
            _id_withCopyrightSign as _$jni.JMethodIDPtr, z ? 1 : 0)
        .object(const $AttributionParser_Options$Type());
  }

  static final _id_withMapboxAttribution = _class.instanceMethodId(
    r'withMapboxAttribution',
    r'(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;',
  );

  static final _withMapboxAttribution = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<(_$jni.Int32,)>)>>('globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, int)>();

  /// from: `public org.maplibre.android.attribution.AttributionParser$Options withMapboxAttribution(boolean z)`
  /// The returned object must be released after use, by calling the [release] method.
  AttributionParser_Options withMapboxAttribution(
    bool z,
  ) {
    return _withMapboxAttribution(reference.pointer,
            _id_withMapboxAttribution as _$jni.JMethodIDPtr, z ? 1 : 0)
        .object(const $AttributionParser_Options$Type());
  }

  static final _id_build = _class.instanceMethodId(
    r'build',
    r'()Lorg/maplibre/android/attribution/AttributionParser;',
  );

  static final _build = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.attribution.AttributionParser build()`
  /// The returned object must be released after use, by calling the [release] method.
  AttributionParser build() {
    return _build(reference.pointer, _id_build as _$jni.JMethodIDPtr)
        .object(const $AttributionParser$Type());
  }
}

final class $AttributionParser_Options$Type
    extends _$jni.JObjType<AttributionParser_Options> {
  @_$jni.internal
  const $AttributionParser_Options$Type();

  @_$jni.internal
  @_$core.override
  String get signature =>
      r'Lorg/maplibre/android/attribution/AttributionParser$Options;';

  @_$jni.internal
  @_$core.override
  AttributionParser_Options fromReference(_$jni.JReference reference) =>
      AttributionParser_Options.fromReference(reference);

  @_$jni.internal
  @_$core.override
  _$jni.JObjType get superType => const _$jni.JObjectType();

  @_$jni.internal
  @_$core.override
  final superCount = 1;

  @_$core.override
  int get hashCode => ($AttributionParser_Options$Type).hashCode;

  @_$core.override
  bool operator ==(Object other) {
    return other.runtimeType == ($AttributionParser_Options$Type) &&
        other is $AttributionParser_Options$Type;
  }
}

/// from: `org.maplibre.android.attribution.AttributionParser`
class AttributionParser extends _$jni.JObject {
  @_$jni.internal
  @_$core.override
  final _$jni.JObjType<AttributionParser> $type;

  @_$jni.internal
  AttributionParser.fromReference(
    _$jni.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class = _$jni.JClass.forName(
      r'org/maplibre/android/attribution/AttributionParser');

  /// The type which includes information such as the signature of this class.
  static const type = $AttributionParser$Type();
  static final _id_getAttributions = _class.instanceMethodId(
    r'getAttributions',
    r'()Ljava/util/Set;',
  );

  static final _getAttributions = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public java.util.Set getAttributions()`
  /// The returned object must be released after use, by calling the [release] method.
  _$jni.JSet<attribution_.Attribution> getAttributions() {
    return _getAttributions(
            reference.pointer, _id_getAttributions as _$jni.JMethodIDPtr)
        .object(const _$jni.JSetType(attribution_.$Attribution$Type()));
  }

  static final _id_createAttributionString = _class.instanceMethodId(
    r'createAttributionString',
    r'()Ljava/lang/String;',
  );

  static final _createAttributionString = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public java.lang.String createAttributionString()`
  /// The returned object must be released after use, by calling the [release] method.
  _$jni.JString createAttributionString() {
    return _createAttributionString(reference.pointer,
            _id_createAttributionString as _$jni.JMethodIDPtr)
        .object(const _$jni.JStringType());
  }

  static final _id_createAttributionString$1 = _class.instanceMethodId(
    r'createAttributionString',
    r'(Z)Ljava/lang/String;',
  );

  static final _createAttributionString$1 = _$jni.ProtectedJniExtensions.lookup<
          _$jni.NativeFunction<
              _$jni.JniResult Function(
                  _$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr,
                  _$jni.VarArgs<(_$jni.Int32,)>)>>('globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(
              _$jni.Pointer<_$jni.Void>, _$jni.JMethodIDPtr, int)>();

  /// from: `public java.lang.String createAttributionString(boolean z)`
  /// The returned object must be released after use, by calling the [release] method.
  _$jni.JString createAttributionString$1(
    bool z,
  ) {
    return _createAttributionString$1(reference.pointer,
            _id_createAttributionString$1 as _$jni.JMethodIDPtr, z ? 1 : 0)
        .object(const _$jni.JStringType());
  }
}

final class $AttributionParser$Type extends _$jni.JObjType<AttributionParser> {
  @_$jni.internal
  const $AttributionParser$Type();

  @_$jni.internal
  @_$core.override
  String get signature =>
      r'Lorg/maplibre/android/attribution/AttributionParser;';

  @_$jni.internal
  @_$core.override
  AttributionParser fromReference(_$jni.JReference reference) =>
      AttributionParser.fromReference(reference);

  @_$jni.internal
  @_$core.override
  _$jni.JObjType get superType => const _$jni.JObjectType();

  @_$jni.internal
  @_$core.override
  final superCount = 1;

  @_$core.override
  int get hashCode => ($AttributionParser$Type).hashCode;

  @_$core.override
  bool operator ==(Object other) {
    return other.runtimeType == ($AttributionParser$Type) &&
        other is $AttributionParser$Type;
  }
}
