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
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name
// ignore_for_file: use_super_parameters

import 'dart:core' show Object, String, bool, double, int;
import 'dart:core' as core$_;

import 'package:jni/_internal.dart' as jni$_;
import 'package:jni/jni.dart' as jni$_;

import 'Layer.dart' as layer$_;

import 'PropertyValue.dart' as propertyvalue$_;

import 'TransitionOptions.dart' as transitionoptions$_;

/// from: `org.maplibre.android.style.layers.HeatmapLayer`
class HeatmapLayer extends layer$_.Layer {
  @jni$_.internal
  @core$_.override
  final jni$_.JObjType<HeatmapLayer> $type;

  @jni$_.internal
  HeatmapLayer.fromReference(
    jni$_.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class =
      jni$_.JClass.forName(r'org/maplibre/android/style/layers/HeatmapLayer');

  /// The type which includes information such as the signature of this class.
  static const nullableType = $HeatmapLayer$NullableType();
  static const type = $HeatmapLayer$Type();
  static final _id_new$ = _class.constructorId(
    r'(Ljava/lang/String;Ljava/lang/String;)V',
  );

  static final _new$ = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                  jni$_.Pointer<jni$_.Void>,
                  jni$_.JMethodIDPtr,
                  jni$_.VarArgs<
                      (
                        jni$_.Pointer<jni$_.Void>,
                        jni$_.Pointer<jni$_.Void>
                      )>)>>('globalEnv_NewObject')
      .asFunction<
          jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr,
              jni$_.Pointer<jni$_.Void>,
              jni$_.Pointer<jni$_.Void>)>();

  /// from: `public void <init>(java.lang.String string, java.lang.String string1)`
  /// The returned object must be released after use, by calling the [release] method.
  factory HeatmapLayer(
    jni$_.JString? string,
    jni$_.JString? string1,
  ) {
    final _$string = string?.reference ?? jni$_.jNullReference;
    final _$string1 = string1?.reference ?? jni$_.jNullReference;
    return HeatmapLayer.fromReference(_new$(_class.reference.pointer,
            _id_new$ as jni$_.JMethodIDPtr, _$string.pointer, _$string1.pointer)
        .reference);
  }

  static final _id_setSourceLayer = _class.instanceMethodId(
    r'setSourceLayer',
    r'(Ljava/lang/String;)V',
  );

  static final _setSourceLayer = jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JThrowablePtr Function(
                      jni$_.Pointer<jni$_.Void>,
                      jni$_.JMethodIDPtr,
                      jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          jni$_.JThrowablePtr Function(jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public void setSourceLayer(java.lang.String string)`
  void setSourceLayer(
    jni$_.JString? string,
  ) {
    final _$string = string?.reference ?? jni$_.jNullReference;
    _setSourceLayer(reference.pointer, _id_setSourceLayer as jni$_.JMethodIDPtr,
            _$string.pointer)
        .check();
  }

  static final _id_withSourceLayer = _class.instanceMethodId(
    r'withSourceLayer',
    r'(Ljava/lang/String;)Lorg/maplibre/android/style/layers/HeatmapLayer;',
  );

  static final _withSourceLayer = jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                      jni$_.Pointer<jni$_.Void>,
                      jni$_.JMethodIDPtr,
                      jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public org.maplibre.android.style.layers.HeatmapLayer withSourceLayer(java.lang.String string)`
  /// The returned object must be released after use, by calling the [release] method.
  HeatmapLayer? withSourceLayer(
    jni$_.JString? string,
  ) {
    final _$string = string?.reference ?? jni$_.jNullReference;
    return _withSourceLayer(reference.pointer,
            _id_withSourceLayer as jni$_.JMethodIDPtr, _$string.pointer)
        .object<HeatmapLayer?>(const $HeatmapLayer$NullableType());
  }

  static final _id_getSourceId = _class.instanceMethodId(
    r'getSourceId',
    r'()Ljava/lang/String;',
  );

  static final _getSourceId = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public java.lang.String getSourceId()`
  /// The returned object must be released after use, by calling the [release] method.
  jni$_.JString? getSourceId() {
    return _getSourceId(
            reference.pointer, _id_getSourceId as jni$_.JMethodIDPtr)
        .object<jni$_.JString?>(const jni$_.JStringNullableType());
  }

  static final _id_getSourceLayer = _class.instanceMethodId(
    r'getSourceLayer',
    r'()Ljava/lang/String;',
  );

  static final _getSourceLayer = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public java.lang.String getSourceLayer()`
  /// The returned object must be released after use, by calling the [release] method.
  jni$_.JString? getSourceLayer() {
    return _getSourceLayer(
            reference.pointer, _id_getSourceLayer as jni$_.JMethodIDPtr)
        .object<jni$_.JString?>(const jni$_.JStringNullableType());
  }

  static final _id_setFilter = _class.instanceMethodId(
    r'setFilter',
    r'(Lorg/maplibre/android/style/expressions/Expression;)V',
  );

  static final _setFilter = jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JThrowablePtr Function(
                      jni$_.Pointer<jni$_.Void>,
                      jni$_.JMethodIDPtr,
                      jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          jni$_.JThrowablePtr Function(jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public void setFilter(org.maplibre.android.style.expressions.Expression expression)`
  void setFilter(
    jni$_.JObject? expression,
  ) {
    final _$expression = expression?.reference ?? jni$_.jNullReference;
    _setFilter(reference.pointer, _id_setFilter as jni$_.JMethodIDPtr,
            _$expression.pointer)
        .check();
  }

  static final _id_withFilter = _class.instanceMethodId(
    r'withFilter',
    r'(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/HeatmapLayer;',
  );

  static final _withFilter = jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                      jni$_.Pointer<jni$_.Void>,
                      jni$_.JMethodIDPtr,
                      jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public org.maplibre.android.style.layers.HeatmapLayer withFilter(org.maplibre.android.style.expressions.Expression expression)`
  /// The returned object must be released after use, by calling the [release] method.
  HeatmapLayer? withFilter(
    jni$_.JObject? expression,
  ) {
    final _$expression = expression?.reference ?? jni$_.jNullReference;
    return _withFilter(reference.pointer, _id_withFilter as jni$_.JMethodIDPtr,
            _$expression.pointer)
        .object<HeatmapLayer?>(const $HeatmapLayer$NullableType());
  }

  static final _id_getFilter = _class.instanceMethodId(
    r'getFilter',
    r'()Lorg/maplibre/android/style/expressions/Expression;',
  );

  static final _getFilter = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public org.maplibre.android.style.expressions.Expression getFilter()`
  /// The returned object must be released after use, by calling the [release] method.
  jni$_.JObject? getFilter() {
    return _getFilter(reference.pointer, _id_getFilter as jni$_.JMethodIDPtr)
        .object<jni$_.JObject?>(const jni$_.JObjectNullableType());
  }

  static final _id_withProperties = _class.instanceMethodId(
    r'withProperties',
    r'([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/HeatmapLayer;',
  );

  static final _withProperties = jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                      jni$_.Pointer<jni$_.Void>,
                      jni$_.JMethodIDPtr,
                      jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public org.maplibre.android.style.layers.HeatmapLayer withProperties(java.lang.Object[] propertyValues)`
  /// The returned object must be released after use, by calling the [release] method.
  HeatmapLayer? withProperties(
    jni$_.JArray<propertyvalue$_.PropertyValue<jni$_.JObject?>?>?
        propertyValues,
  ) {
    final _$propertyValues = propertyValues?.reference ?? jni$_.jNullReference;
    return _withProperties(reference.pointer,
            _id_withProperties as jni$_.JMethodIDPtr, _$propertyValues.pointer)
        .object<HeatmapLayer?>(const $HeatmapLayer$NullableType());
  }

  static final _id_getHeatmapRadius = _class.instanceMethodId(
    r'getHeatmapRadius',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getHeatmapRadius = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public org.maplibre.android.style.layers.PropertyValue getHeatmapRadius()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue$_.PropertyValue<jni$_.JFloat?>? getHeatmapRadius() {
    return _getHeatmapRadius(
            reference.pointer, _id_getHeatmapRadius as jni$_.JMethodIDPtr)
        .object<propertyvalue$_.PropertyValue<jni$_.JFloat?>?>(
            const propertyvalue$_.$PropertyValue$NullableType<jni$_.JFloat?>(
                jni$_.JFloatNullableType()));
  }

  static final _id_getHeatmapRadiusTransition = _class.instanceMethodId(
    r'getHeatmapRadiusTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getHeatmapRadiusTransition =
      jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                    jni$_.Pointer<jni$_.Void>,
                    jni$_.JMethodIDPtr,
                  )>>('globalEnv_CallObjectMethod')
          .asFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>();

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getHeatmapRadiusTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions$_.TransitionOptions? getHeatmapRadiusTransition() {
    return _getHeatmapRadiusTransition(reference.pointer,
            _id_getHeatmapRadiusTransition as jni$_.JMethodIDPtr)
        .object<transitionoptions$_.TransitionOptions?>(
            const transitionoptions$_.$TransitionOptions$NullableType());
  }

  static final _id_setHeatmapRadiusTransition = _class.instanceMethodId(
    r'setHeatmapRadiusTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setHeatmapRadiusTransition =
      jni$_.ProtectedJniExtensions.lookup<
                  jni$_.NativeFunction<
                      jni$_.JThrowablePtr Function(
                          jni$_.Pointer<jni$_.Void>,
                          jni$_.JMethodIDPtr,
                          jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
              'globalEnv_CallVoidMethod')
          .asFunction<
              jni$_.JThrowablePtr Function(jni$_.Pointer<jni$_.Void>,
                  jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public void setHeatmapRadiusTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setHeatmapRadiusTransition(
    transitionoptions$_.TransitionOptions? transitionOptions,
  ) {
    final _$transitionOptions =
        transitionOptions?.reference ?? jni$_.jNullReference;
    _setHeatmapRadiusTransition(
            reference.pointer,
            _id_setHeatmapRadiusTransition as jni$_.JMethodIDPtr,
            _$transitionOptions.pointer)
        .check();
  }

  static final _id_getHeatmapWeight = _class.instanceMethodId(
    r'getHeatmapWeight',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getHeatmapWeight = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public org.maplibre.android.style.layers.PropertyValue getHeatmapWeight()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue$_.PropertyValue<jni$_.JFloat?>? getHeatmapWeight() {
    return _getHeatmapWeight(
            reference.pointer, _id_getHeatmapWeight as jni$_.JMethodIDPtr)
        .object<propertyvalue$_.PropertyValue<jni$_.JFloat?>?>(
            const propertyvalue$_.$PropertyValue$NullableType<jni$_.JFloat?>(
                jni$_.JFloatNullableType()));
  }

  static final _id_getHeatmapIntensity = _class.instanceMethodId(
    r'getHeatmapIntensity',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getHeatmapIntensity = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public org.maplibre.android.style.layers.PropertyValue getHeatmapIntensity()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue$_.PropertyValue<jni$_.JFloat?>? getHeatmapIntensity() {
    return _getHeatmapIntensity(
            reference.pointer, _id_getHeatmapIntensity as jni$_.JMethodIDPtr)
        .object<propertyvalue$_.PropertyValue<jni$_.JFloat?>?>(
            const propertyvalue$_.$PropertyValue$NullableType<jni$_.JFloat?>(
                jni$_.JFloatNullableType()));
  }

  static final _id_getHeatmapIntensityTransition = _class.instanceMethodId(
    r'getHeatmapIntensityTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getHeatmapIntensityTransition =
      jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                    jni$_.Pointer<jni$_.Void>,
                    jni$_.JMethodIDPtr,
                  )>>('globalEnv_CallObjectMethod')
          .asFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>();

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getHeatmapIntensityTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions$_.TransitionOptions? getHeatmapIntensityTransition() {
    return _getHeatmapIntensityTransition(reference.pointer,
            _id_getHeatmapIntensityTransition as jni$_.JMethodIDPtr)
        .object<transitionoptions$_.TransitionOptions?>(
            const transitionoptions$_.$TransitionOptions$NullableType());
  }

  static final _id_setHeatmapIntensityTransition = _class.instanceMethodId(
    r'setHeatmapIntensityTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setHeatmapIntensityTransition =
      jni$_.ProtectedJniExtensions.lookup<
                  jni$_.NativeFunction<
                      jni$_.JThrowablePtr Function(
                          jni$_.Pointer<jni$_.Void>,
                          jni$_.JMethodIDPtr,
                          jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
              'globalEnv_CallVoidMethod')
          .asFunction<
              jni$_.JThrowablePtr Function(jni$_.Pointer<jni$_.Void>,
                  jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public void setHeatmapIntensityTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setHeatmapIntensityTransition(
    transitionoptions$_.TransitionOptions? transitionOptions,
  ) {
    final _$transitionOptions =
        transitionOptions?.reference ?? jni$_.jNullReference;
    _setHeatmapIntensityTransition(
            reference.pointer,
            _id_setHeatmapIntensityTransition as jni$_.JMethodIDPtr,
            _$transitionOptions.pointer)
        .check();
  }

  static final _id_getHeatmapColor = _class.instanceMethodId(
    r'getHeatmapColor',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getHeatmapColor = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public org.maplibre.android.style.layers.PropertyValue getHeatmapColor()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue$_.PropertyValue<jni$_.JString?>? getHeatmapColor() {
    return _getHeatmapColor(
            reference.pointer, _id_getHeatmapColor as jni$_.JMethodIDPtr)
        .object<propertyvalue$_.PropertyValue<jni$_.JString?>?>(
            const propertyvalue$_.$PropertyValue$NullableType<jni$_.JString?>(
                jni$_.JStringNullableType()));
  }

  static final _id_getHeatmapColorAsInt = _class.instanceMethodId(
    r'getHeatmapColorAsInt',
    r'()I',
  );

  static final _getHeatmapColorAsInt = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallIntMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public int getHeatmapColorAsInt()`
  int getHeatmapColorAsInt() {
    return _getHeatmapColorAsInt(
            reference.pointer, _id_getHeatmapColorAsInt as jni$_.JMethodIDPtr)
        .integer;
  }

  static final _id_getHeatmapOpacity = _class.instanceMethodId(
    r'getHeatmapOpacity',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getHeatmapOpacity = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public org.maplibre.android.style.layers.PropertyValue getHeatmapOpacity()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue$_.PropertyValue<jni$_.JFloat?>? getHeatmapOpacity() {
    return _getHeatmapOpacity(
            reference.pointer, _id_getHeatmapOpacity as jni$_.JMethodIDPtr)
        .object<propertyvalue$_.PropertyValue<jni$_.JFloat?>?>(
            const propertyvalue$_.$PropertyValue$NullableType<jni$_.JFloat?>(
                jni$_.JFloatNullableType()));
  }

  static final _id_getHeatmapOpacityTransition = _class.instanceMethodId(
    r'getHeatmapOpacityTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getHeatmapOpacityTransition =
      jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                    jni$_.Pointer<jni$_.Void>,
                    jni$_.JMethodIDPtr,
                  )>>('globalEnv_CallObjectMethod')
          .asFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>();

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getHeatmapOpacityTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions$_.TransitionOptions? getHeatmapOpacityTransition() {
    return _getHeatmapOpacityTransition(reference.pointer,
            _id_getHeatmapOpacityTransition as jni$_.JMethodIDPtr)
        .object<transitionoptions$_.TransitionOptions?>(
            const transitionoptions$_.$TransitionOptions$NullableType());
  }

  static final _id_setHeatmapOpacityTransition = _class.instanceMethodId(
    r'setHeatmapOpacityTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setHeatmapOpacityTransition =
      jni$_.ProtectedJniExtensions.lookup<
                  jni$_.NativeFunction<
                      jni$_.JThrowablePtr Function(
                          jni$_.Pointer<jni$_.Void>,
                          jni$_.JMethodIDPtr,
                          jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>)>>(
              'globalEnv_CallVoidMethod')
          .asFunction<
              jni$_.JThrowablePtr Function(jni$_.Pointer<jni$_.Void>,
                  jni$_.JMethodIDPtr, jni$_.Pointer<jni$_.Void>)>();

  /// from: `public void setHeatmapOpacityTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setHeatmapOpacityTransition(
    transitionoptions$_.TransitionOptions? transitionOptions,
  ) {
    final _$transitionOptions =
        transitionOptions?.reference ?? jni$_.jNullReference;
    _setHeatmapOpacityTransition(
            reference.pointer,
            _id_setHeatmapOpacityTransition as jni$_.JMethodIDPtr,
            _$transitionOptions.pointer)
        .check();
  }
}

final class $HeatmapLayer$NullableType extends jni$_.JObjType<HeatmapLayer?> {
  @jni$_.internal
  const $HeatmapLayer$NullableType();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/style/layers/HeatmapLayer;';

  @jni$_.internal
  @core$_.override
  HeatmapLayer? fromReference(jni$_.JReference reference) => reference.isNull
      ? null
      : HeatmapLayer.fromReference(
          reference,
        );
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const layer$_.$Layer$NullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<HeatmapLayer?> get nullableType => this;

  @jni$_.internal
  @core$_.override
  final superCount = 2;

  @core$_.override
  int get hashCode => ($HeatmapLayer$NullableType).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($HeatmapLayer$NullableType) &&
        other is $HeatmapLayer$NullableType;
  }
}

final class $HeatmapLayer$Type extends jni$_.JObjType<HeatmapLayer> {
  @jni$_.internal
  const $HeatmapLayer$Type();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/style/layers/HeatmapLayer;';

  @jni$_.internal
  @core$_.override
  HeatmapLayer fromReference(jni$_.JReference reference) =>
      HeatmapLayer.fromReference(
        reference,
      );
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const layer$_.$Layer$NullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<HeatmapLayer?> get nullableType =>
      const $HeatmapLayer$NullableType();

  @jni$_.internal
  @core$_.override
  final superCount = 2;

  @core$_.override
  int get hashCode => ($HeatmapLayer$Type).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($HeatmapLayer$Type) &&
        other is $HeatmapLayer$Type;
  }
}
