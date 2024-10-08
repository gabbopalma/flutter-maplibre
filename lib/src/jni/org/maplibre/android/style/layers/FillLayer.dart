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

import 'Layer.dart' as layer_;

import 'PropertyValue.dart' as propertyvalue_;

import 'TransitionOptions.dart' as transitionoptions_;

/// from: `org.maplibre.android.style.layers.FillLayer`
class FillLayer extends layer_.Layer {
  @_$jni.internal
  @_$core.override
  final _$jni.JObjType<FillLayer> $type;

  @_$jni.internal
  FillLayer.fromReference(
    _$jni.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class =
      _$jni.JClass.forName(r'org/maplibre/android/style/layers/FillLayer');

  /// The type which includes information such as the signature of this class.
  static const type = $FillLayer$Type();
  static final _id_new$ = _class.constructorId(
    r'(Ljava/lang/String;Ljava/lang/String;)V',
  );

  static final _new$ = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public void <init>(java.lang.String string, java.lang.String string1)`
  /// The returned object must be released after use, by calling the [release] method.
  factory FillLayer(
    _$jni.JString string,
    _$jni.JString string1,
  ) {
    return FillLayer.fromReference(_new$(
            _class.reference.pointer,
            _id_new$ as _$jni.JMethodIDPtr,
            string.reference.pointer,
            string1.reference.pointer)
        .reference);
  }

  static final _id_setSourceLayer = _class.instanceMethodId(
    r'setSourceLayer',
    r'(Ljava/lang/String;)V',
  );

  static final _setSourceLayer = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public void setSourceLayer(java.lang.String string)`
  void setSourceLayer(
    _$jni.JString string,
  ) {
    _setSourceLayer(reference.pointer, _id_setSourceLayer as _$jni.JMethodIDPtr,
            string.reference.pointer)
        .check();
  }

  static final _id_withSourceLayer = _class.instanceMethodId(
    r'withSourceLayer',
    r'(Ljava/lang/String;)Lorg/maplibre/android/style/layers/FillLayer;',
  );

  static final _withSourceLayer = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public org.maplibre.android.style.layers.FillLayer withSourceLayer(java.lang.String string)`
  /// The returned object must be released after use, by calling the [release] method.
  FillLayer withSourceLayer(
    _$jni.JString string,
  ) {
    return _withSourceLayer(reference.pointer,
            _id_withSourceLayer as _$jni.JMethodIDPtr, string.reference.pointer)
        .object(const $FillLayer$Type());
  }

  static final _id_getSourceId = _class.instanceMethodId(
    r'getSourceId',
    r'()Ljava/lang/String;',
  );

  static final _getSourceId = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public java.lang.String getSourceId()`
  /// The returned object must be released after use, by calling the [release] method.
  _$jni.JString getSourceId() {
    return _getSourceId(
            reference.pointer, _id_getSourceId as _$jni.JMethodIDPtr)
        .object(const _$jni.JStringType());
  }

  static final _id_getSourceLayer = _class.instanceMethodId(
    r'getSourceLayer',
    r'()Ljava/lang/String;',
  );

  static final _getSourceLayer = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public java.lang.String getSourceLayer()`
  /// The returned object must be released after use, by calling the [release] method.
  _$jni.JString getSourceLayer() {
    return _getSourceLayer(
            reference.pointer, _id_getSourceLayer as _$jni.JMethodIDPtr)
        .object(const _$jni.JStringType());
  }

  static final _id_setFilter = _class.instanceMethodId(
    r'setFilter',
    r'(Lorg/maplibre/android/style/expressions/Expression;)V',
  );

  static final _setFilter = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public void setFilter(org.maplibre.android.style.expressions.Expression expression)`
  void setFilter(
    _$jni.JObject expression,
  ) {
    _setFilter(reference.pointer, _id_setFilter as _$jni.JMethodIDPtr,
            expression.reference.pointer)
        .check();
  }

  static final _id_withFilter = _class.instanceMethodId(
    r'withFilter',
    r'(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/FillLayer;',
  );

  static final _withFilter = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public org.maplibre.android.style.layers.FillLayer withFilter(org.maplibre.android.style.expressions.Expression expression)`
  /// The returned object must be released after use, by calling the [release] method.
  FillLayer withFilter(
    _$jni.JObject expression,
  ) {
    return _withFilter(reference.pointer, _id_withFilter as _$jni.JMethodIDPtr,
            expression.reference.pointer)
        .object(const $FillLayer$Type());
  }

  static final _id_getFilter = _class.instanceMethodId(
    r'getFilter',
    r'()Lorg/maplibre/android/style/expressions/Expression;',
  );

  static final _getFilter = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.expressions.Expression getFilter()`
  /// The returned object must be released after use, by calling the [release] method.
  _$jni.JObject getFilter() {
    return _getFilter(reference.pointer, _id_getFilter as _$jni.JMethodIDPtr)
        .object(const _$jni.JObjectType());
  }

  static final _id_withProperties = _class.instanceMethodId(
    r'withProperties',
    r'([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/FillLayer;',
  );

  static final _withProperties = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JniResult Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallObjectMethod')
      .asFunction<
          _$jni.JniResult Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public org.maplibre.android.style.layers.FillLayer withProperties(java.lang.Object[] propertyValues)`
  /// The returned object must be released after use, by calling the [release] method.
  FillLayer withProperties(
    _$jni.JArray<propertyvalue_.PropertyValue<_$jni.JObject>> propertyValues,
  ) {
    return _withProperties(
            reference.pointer,
            _id_withProperties as _$jni.JMethodIDPtr,
            propertyValues.reference.pointer)
        .object(const $FillLayer$Type());
  }

  static final _id_getFillSortKey = _class.instanceMethodId(
    r'getFillSortKey',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillSortKey = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillSortKey()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JFloat> getFillSortKey() {
    return _getFillSortKey(
            reference.pointer, _id_getFillSortKey as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(_$jni.JFloatType()));
  }

  static final _id_getFillAntialias = _class.instanceMethodId(
    r'getFillAntialias',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillAntialias = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillAntialias()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JBoolean> getFillAntialias() {
    return _getFillAntialias(
            reference.pointer, _id_getFillAntialias as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(_$jni.JBooleanType()));
  }

  static final _id_getFillOpacity = _class.instanceMethodId(
    r'getFillOpacity',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillOpacity = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillOpacity()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JFloat> getFillOpacity() {
    return _getFillOpacity(
            reference.pointer, _id_getFillOpacity as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(_$jni.JFloatType()));
  }

  static final _id_getFillOpacityTransition = _class.instanceMethodId(
    r'getFillOpacityTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getFillOpacityTransition = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getFillOpacityTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions_.TransitionOptions getFillOpacityTransition() {
    return _getFillOpacityTransition(reference.pointer,
            _id_getFillOpacityTransition as _$jni.JMethodIDPtr)
        .object(const transitionoptions_.$TransitionOptions$Type());
  }

  static final _id_setFillOpacityTransition = _class.instanceMethodId(
    r'setFillOpacityTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setFillOpacityTransition = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public void setFillOpacityTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setFillOpacityTransition(
    transitionoptions_.TransitionOptions transitionOptions,
  ) {
    _setFillOpacityTransition(
            reference.pointer,
            _id_setFillOpacityTransition as _$jni.JMethodIDPtr,
            transitionOptions.reference.pointer)
        .check();
  }

  static final _id_getFillColor = _class.instanceMethodId(
    r'getFillColor',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillColor = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillColor()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JString> getFillColor() {
    return _getFillColor(
            reference.pointer, _id_getFillColor as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(_$jni.JStringType()));
  }

  static final _id_getFillColorAsInt = _class.instanceMethodId(
    r'getFillColorAsInt',
    r'()I',
  );

  static final _getFillColorAsInt = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public int getFillColorAsInt()`
  int getFillColorAsInt() {
    return _getFillColorAsInt(
            reference.pointer, _id_getFillColorAsInt as _$jni.JMethodIDPtr)
        .integer;
  }

  static final _id_getFillColorTransition = _class.instanceMethodId(
    r'getFillColorTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getFillColorTransition = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getFillColorTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions_.TransitionOptions getFillColorTransition() {
    return _getFillColorTransition(
            reference.pointer, _id_getFillColorTransition as _$jni.JMethodIDPtr)
        .object(const transitionoptions_.$TransitionOptions$Type());
  }

  static final _id_setFillColorTransition = _class.instanceMethodId(
    r'setFillColorTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setFillColorTransition = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public void setFillColorTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setFillColorTransition(
    transitionoptions_.TransitionOptions transitionOptions,
  ) {
    _setFillColorTransition(
            reference.pointer,
            _id_setFillColorTransition as _$jni.JMethodIDPtr,
            transitionOptions.reference.pointer)
        .check();
  }

  static final _id_getFillOutlineColor = _class.instanceMethodId(
    r'getFillOutlineColor',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillOutlineColor = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillOutlineColor()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JString> getFillOutlineColor() {
    return _getFillOutlineColor(
            reference.pointer, _id_getFillOutlineColor as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(_$jni.JStringType()));
  }

  static final _id_getFillOutlineColorAsInt = _class.instanceMethodId(
    r'getFillOutlineColorAsInt',
    r'()I',
  );

  static final _getFillOutlineColorAsInt = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public int getFillOutlineColorAsInt()`
  int getFillOutlineColorAsInt() {
    return _getFillOutlineColorAsInt(reference.pointer,
            _id_getFillOutlineColorAsInt as _$jni.JMethodIDPtr)
        .integer;
  }

  static final _id_getFillOutlineColorTransition = _class.instanceMethodId(
    r'getFillOutlineColorTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getFillOutlineColorTransition =
      _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getFillOutlineColorTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions_.TransitionOptions getFillOutlineColorTransition() {
    return _getFillOutlineColorTransition(reference.pointer,
            _id_getFillOutlineColorTransition as _$jni.JMethodIDPtr)
        .object(const transitionoptions_.$TransitionOptions$Type());
  }

  static final _id_setFillOutlineColorTransition = _class.instanceMethodId(
    r'setFillOutlineColorTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setFillOutlineColorTransition =
      _$jni.ProtectedJniExtensions.lookup<
                  _$jni.NativeFunction<
                      _$jni.JThrowablePtr Function(
                          _$jni.Pointer<_$jni.Void>,
                          _$jni.JMethodIDPtr,
                          _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
              'globalEnv_CallVoidMethod')
          .asFunction<
              _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public void setFillOutlineColorTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setFillOutlineColorTransition(
    transitionoptions_.TransitionOptions transitionOptions,
  ) {
    _setFillOutlineColorTransition(
            reference.pointer,
            _id_setFillOutlineColorTransition as _$jni.JMethodIDPtr,
            transitionOptions.reference.pointer)
        .check();
  }

  static final _id_getFillTranslate = _class.instanceMethodId(
    r'getFillTranslate',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillTranslate = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillTranslate()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JArray<_$jni.JFloat>> getFillTranslate() {
    return _getFillTranslate(
            reference.pointer, _id_getFillTranslate as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(
            _$jni.JArrayType(_$jni.JFloatType())));
  }

  static final _id_getFillTranslateTransition = _class.instanceMethodId(
    r'getFillTranslateTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getFillTranslateTransition =
      _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getFillTranslateTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions_.TransitionOptions getFillTranslateTransition() {
    return _getFillTranslateTransition(reference.pointer,
            _id_getFillTranslateTransition as _$jni.JMethodIDPtr)
        .object(const transitionoptions_.$TransitionOptions$Type());
  }

  static final _id_setFillTranslateTransition = _class.instanceMethodId(
    r'setFillTranslateTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setFillTranslateTransition =
      _$jni.ProtectedJniExtensions.lookup<
                  _$jni.NativeFunction<
                      _$jni.JThrowablePtr Function(
                          _$jni.Pointer<_$jni.Void>,
                          _$jni.JMethodIDPtr,
                          _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
              'globalEnv_CallVoidMethod')
          .asFunction<
              _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
                  _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public void setFillTranslateTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setFillTranslateTransition(
    transitionoptions_.TransitionOptions transitionOptions,
  ) {
    _setFillTranslateTransition(
            reference.pointer,
            _id_setFillTranslateTransition as _$jni.JMethodIDPtr,
            transitionOptions.reference.pointer)
        .check();
  }

  static final _id_getFillTranslateAnchor = _class.instanceMethodId(
    r'getFillTranslateAnchor',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillTranslateAnchor = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillTranslateAnchor()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JString> getFillTranslateAnchor() {
    return _getFillTranslateAnchor(
            reference.pointer, _id_getFillTranslateAnchor as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(_$jni.JStringType()));
  }

  static final _id_getFillPattern = _class.instanceMethodId(
    r'getFillPattern',
    r'()Lorg/maplibre/android/style/layers/PropertyValue;',
  );

  static final _getFillPattern = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.PropertyValue getFillPattern()`
  /// The returned object must be released after use, by calling the [release] method.
  propertyvalue_.PropertyValue<_$jni.JString> getFillPattern() {
    return _getFillPattern(
            reference.pointer, _id_getFillPattern as _$jni.JMethodIDPtr)
        .object(const propertyvalue_.$PropertyValue$Type(_$jni.JStringType()));
  }

  static final _id_getFillPatternTransition = _class.instanceMethodId(
    r'getFillPatternTransition',
    r'()Lorg/maplibre/android/style/layers/TransitionOptions;',
  );

  static final _getFillPatternTransition = _$jni.ProtectedJniExtensions.lookup<
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

  /// from: `public org.maplibre.android.style.layers.TransitionOptions getFillPatternTransition()`
  /// The returned object must be released after use, by calling the [release] method.
  transitionoptions_.TransitionOptions getFillPatternTransition() {
    return _getFillPatternTransition(reference.pointer,
            _id_getFillPatternTransition as _$jni.JMethodIDPtr)
        .object(const transitionoptions_.$TransitionOptions$Type());
  }

  static final _id_setFillPatternTransition = _class.instanceMethodId(
    r'setFillPatternTransition',
    r'(Lorg/maplibre/android/style/layers/TransitionOptions;)V',
  );

  static final _setFillPatternTransition = _$jni.ProtectedJniExtensions.lookup<
              _$jni.NativeFunction<
                  _$jni.JThrowablePtr Function(
                      _$jni.Pointer<_$jni.Void>,
                      _$jni.JMethodIDPtr,
                      _$jni.VarArgs<(_$jni.Pointer<_$jni.Void>,)>)>>(
          'globalEnv_CallVoidMethod')
      .asFunction<
          _$jni.JThrowablePtr Function(_$jni.Pointer<_$jni.Void>,
              _$jni.JMethodIDPtr, _$jni.Pointer<_$jni.Void>)>();

  /// from: `public void setFillPatternTransition(org.maplibre.android.style.layers.TransitionOptions transitionOptions)`
  void setFillPatternTransition(
    transitionoptions_.TransitionOptions transitionOptions,
  ) {
    _setFillPatternTransition(
            reference.pointer,
            _id_setFillPatternTransition as _$jni.JMethodIDPtr,
            transitionOptions.reference.pointer)
        .check();
  }
}

final class $FillLayer$Type extends _$jni.JObjType<FillLayer> {
  @_$jni.internal
  const $FillLayer$Type();

  @_$jni.internal
  @_$core.override
  String get signature => r'Lorg/maplibre/android/style/layers/FillLayer;';

  @_$jni.internal
  @_$core.override
  FillLayer fromReference(_$jni.JReference reference) =>
      FillLayer.fromReference(reference);

  @_$jni.internal
  @_$core.override
  _$jni.JObjType get superType => const layer_.$Layer$Type();

  @_$jni.internal
  @_$core.override
  final superCount = 2;

  @_$core.override
  int get hashCode => ($FillLayer$Type).hashCode;

  @_$core.override
  bool operator ==(Object other) {
    return other.runtimeType == ($FillLayer$Type) && other is $FillLayer$Type;
  }
}
