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

/// from: `org.maplibre.android.utils.Compare`
class Compare extends jni$_.JObject {
  @jni$_.internal
  @core$_.override
  final jni$_.JObjType<Compare> $type;

  @jni$_.internal
  Compare.fromReference(
    jni$_.JReference reference,
  )   : $type = type,
        super.fromReference(reference);

  static final _class =
      jni$_.JClass.forName(r'org/maplibre/android/utils/Compare');

  /// The type which includes information such as the signature of this class.
  static const nullableType = $Compare$NullableType();
  static const type = $Compare$Type();
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
  factory Compare() {
    return Compare.fromReference(
        _new$(_class.reference.pointer, _id_new$ as jni$_.JMethodIDPtr)
            .reference);
  }

  static final _id_compare = _class.staticMethodId(
    r'compare',
    r'(II)I',
  );

  static final _compare = jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                      jni$_.Pointer<jni$_.Void>,
                      jni$_.JMethodIDPtr,
                      jni$_.VarArgs<(jni$_.Int32, jni$_.Int32)>)>>(
          'globalEnv_CallStaticIntMethod')
      .asFunction<
          jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>, jni$_.JMethodIDPtr, int, int)>();

  /// from: `static public int compare(int i, int i1)`
  static int compare(
    int i,
    int i1,
  ) {
    return _compare(
            _class.reference.pointer, _id_compare as jni$_.JMethodIDPtr, i, i1)
        .integer;
  }

  static final _id_compare$1 = _class.staticMethodId(
    r'compare',
    r'(ZZ)I',
  );

  static final _compare$1 = jni$_.ProtectedJniExtensions.lookup<
              jni$_.NativeFunction<
                  jni$_.JniResult Function(
                      jni$_.Pointer<jni$_.Void>,
                      jni$_.JMethodIDPtr,
                      jni$_.VarArgs<(jni$_.Int32, jni$_.Int32)>)>>(
          'globalEnv_CallStaticIntMethod')
      .asFunction<
          jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>, jni$_.JMethodIDPtr, int, int)>();

  /// from: `static public int compare(boolean z, boolean z1)`
  static int compare$1(
    bool z,
    bool z1,
  ) {
    return _compare$1(_class.reference.pointer,
            _id_compare$1 as jni$_.JMethodIDPtr, z ? 1 : 0, z1 ? 1 : 0)
        .integer;
  }
}

final class $Compare$NullableType extends jni$_.JObjType<Compare?> {
  @jni$_.internal
  const $Compare$NullableType();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/utils/Compare;';

  @jni$_.internal
  @core$_.override
  Compare? fromReference(jni$_.JReference reference) => reference.isNull
      ? null
      : Compare.fromReference(
          reference,
        );
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const jni$_.JObjectNullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<Compare?> get nullableType => this;

  @jni$_.internal
  @core$_.override
  final superCount = 1;

  @core$_.override
  int get hashCode => ($Compare$NullableType).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($Compare$NullableType) &&
        other is $Compare$NullableType;
  }
}

final class $Compare$Type extends jni$_.JObjType<Compare> {
  @jni$_.internal
  const $Compare$Type();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/utils/Compare;';

  @jni$_.internal
  @core$_.override
  Compare fromReference(jni$_.JReference reference) => Compare.fromReference(
        reference,
      );
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const jni$_.JObjectNullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<Compare?> get nullableType => const $Compare$NullableType();

  @jni$_.internal
  @core$_.override
  final superCount = 1;

  @core$_.override
  int get hashCode => ($Compare$Type).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($Compare$Type) && other is $Compare$Type;
  }
}
