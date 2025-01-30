// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: document_ignores
// ignore_for_file: avoid_catches_without_on_clauses
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

/// from: `org.maplibre.android.location.PaddingEvaluator`
class PaddingEvaluator extends jni$_.JObject {
  @jni$_.internal
  @core$_.override
  final jni$_.JObjType<PaddingEvaluator> $type;

  @jni$_.internal
  PaddingEvaluator.fromReference(
    jni$_.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class =
      jni$_.JClass.forName(r'org/maplibre/android/location/PaddingEvaluator');

  /// The type which includes information such as the signature of this class.
  static const nullableType = $PaddingEvaluator$NullableType();
  static const type = $PaddingEvaluator$Type();
  static final _id_new$ = _class.constructorId(
    r'()V',
  );

  static final _new$ = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )>>('globalEnv_NewObject')
      .asFunction<
          jni$_.JniResult Function(
            jni$_.Pointer<jni$_.Void>,
            jni$_.JMethodIDPtr,
          )>();

  /// from: `public void <init>()`
  /// The returned object must be released after use, by calling the [release] method.
  factory PaddingEvaluator() {
    return PaddingEvaluator.fromReference(
        _new$(_class.reference.pointer, _id_new$ as jni$_.JMethodIDPtr)
            .reference);
  }

  static final _id_evaluate = _class.instanceMethodId(
    r'evaluate',
    r'(F[D[D)[D',
  );

  static final _evaluate = jni$_.ProtectedJniExtensions.lookup<
          jni$_.NativeFunction<
              jni$_.JniResult Function(
                  jni$_.Pointer<jni$_.Void>,
                  jni$_.JMethodIDPtr,
                  jni$_.VarArgs<
                      (
                        jni$_.Double,
                        jni$_.Pointer<jni$_.Void>,
                        jni$_.Pointer<jni$_.Void>
                      )>)>>('globalEnv_CallObjectMethod')
      .asFunction<
          jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr,
              double,
              jni$_.Pointer<jni$_.Void>,
              jni$_.Pointer<jni$_.Void>)>();

  /// from: `public double[] evaluate(float f, double[] ds, double[] ds1)`
  /// The returned object must be released after use, by calling the [release] method.
  jni$_.JDoubleArray evaluate(
    double f,
    jni$_.JDoubleArray ds,
    jni$_.JDoubleArray ds1,
  ) {
    final _$ds = ds.reference;
    final _$ds1 = ds1.reference;
    return _evaluate(reference.pointer, _id_evaluate as jni$_.JMethodIDPtr, f,
            _$ds.pointer, _$ds1.pointer)
        .object<jni$_.JDoubleArray>(const jni$_.JDoubleArrayType());
  }
}

final class $PaddingEvaluator$NullableType
    extends jni$_.JObjType<PaddingEvaluator?> {
  @jni$_.internal
  const $PaddingEvaluator$NullableType();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/location/PaddingEvaluator;';

  @jni$_.internal
  @core$_.override
  PaddingEvaluator? fromReference(jni$_.JReference reference) =>
      reference.isNull
          ? null
          : PaddingEvaluator.fromReference(
              reference,
            );
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const jni$_.JObjectNullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<PaddingEvaluator?> get nullableType => this;

  @jni$_.internal
  @core$_.override
  final superCount = 1;

  @core$_.override
  int get hashCode => ($PaddingEvaluator$NullableType).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($PaddingEvaluator$NullableType) &&
        other is $PaddingEvaluator$NullableType;
  }
}

final class $PaddingEvaluator$Type extends jni$_.JObjType<PaddingEvaluator> {
  @jni$_.internal
  const $PaddingEvaluator$Type();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/location/PaddingEvaluator;';

  @jni$_.internal
  @core$_.override
  PaddingEvaluator fromReference(jni$_.JReference reference) =>
      PaddingEvaluator.fromReference(
        reference,
      );
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const jni$_.JObjectNullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<PaddingEvaluator?> get nullableType =>
      const $PaddingEvaluator$NullableType();

  @jni$_.internal
  @core$_.override
  final superCount = 1;

  @core$_.override
  int get hashCode => ($PaddingEvaluator$Type).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($PaddingEvaluator$Type) &&
        other is $PaddingEvaluator$Type;
  }
}
