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

/// from: `org.maplibre.android.style.light.Position`
class Position extends jni$_.JObject {
  @jni$_.internal
  @core$_.override
  final jni$_.JObjType<Position> $type;

  @jni$_.internal
  Position.fromReference(jni$_.JReference reference)
    : $type = type,
      super.fromReference(reference);

  static final _class = jni$_.JClass.forName(
    r'org/maplibre/android/style/light/Position',
  );

  /// The type which includes information such as the signature of this class.
  static const nullableType = $Position$NullableType();
  static const type = $Position$Type();
  static final _id_new$ = _class.constructorId(r'(FFF)V');

  static final _new$ =
      jni$_.ProtectedJniExtensions.lookup<
            jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
                jni$_.VarArgs<(jni$_.Double, jni$_.Double, jni$_.Double)>,
              )
            >
          >('globalEnv_NewObject')
          .asFunction<
            jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr,
              double,
              double,
              double,
            )
          >();

  /// from: `public void <init>(float f, float f1, float f2)`
  /// The returned object must be released after use, by calling the [release] method.
  factory Position(double f, double f1, double f2) {
    return Position.fromReference(
      _new$(
        _class.reference.pointer,
        _id_new$ as jni$_.JMethodIDPtr,
        f,
        f1,
        f2,
      ).reference,
    );
  }

  static final _id_fromPosition = _class.staticMethodId(
    r'fromPosition',
    r'(FFF)Lorg/maplibre/android/style/light/Position;',
  );

  static final _fromPosition =
      jni$_.ProtectedJniExtensions.lookup<
            jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
                jni$_.VarArgs<(jni$_.Double, jni$_.Double, jni$_.Double)>,
              )
            >
          >('globalEnv_CallStaticObjectMethod')
          .asFunction<
            jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr,
              double,
              double,
              double,
            )
          >();

  /// from: `static public org.maplibre.android.style.light.Position fromPosition(float f, float f1, float f2)`
  /// The returned object must be released after use, by calling the [release] method.
  static Position? fromPosition(double f, double f1, double f2) {
    return _fromPosition(
      _class.reference.pointer,
      _id_fromPosition as jni$_.JMethodIDPtr,
      f,
      f1,
      f2,
    ).object<Position?>(const $Position$NullableType());
  }

  static final _id_equals = _class.instanceMethodId(
    r'equals',
    r'(Ljava/lang/Object;)Z',
  );

  static final _equals =
      jni$_.ProtectedJniExtensions.lookup<
            jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
                jni$_.VarArgs<(jni$_.Pointer<jni$_.Void>,)>,
              )
            >
          >('globalEnv_CallBooleanMethod')
          .asFunction<
            jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr,
              jni$_.Pointer<jni$_.Void>,
            )
          >();

  /// from: `public boolean equals(java.lang.Object object)`
  bool equals(jni$_.JObject? object) {
    final _$object = object?.reference ?? jni$_.jNullReference;
    return _equals(
      reference.pointer,
      _id_equals as jni$_.JMethodIDPtr,
      _$object.pointer,
    ).boolean;
  }

  static final _id_hashCode$1 = _class.instanceMethodId(r'hashCode', r'()I');

  static final _hashCode$1 =
      jni$_.ProtectedJniExtensions.lookup<
            jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )
            >
          >('globalEnv_CallIntMethod')
          .asFunction<
            jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr,
            )
          >();

  /// from: `public int hashCode()`
  int hashCode$1() {
    return _hashCode$1(
      reference.pointer,
      _id_hashCode$1 as jni$_.JMethodIDPtr,
    ).integer;
  }

  static final _id_toString$1 = _class.instanceMethodId(
    r'toString',
    r'()Ljava/lang/String;',
  );

  static final _toString$1 =
      jni$_.ProtectedJniExtensions.lookup<
            jni$_.NativeFunction<
              jni$_.JniResult Function(
                jni$_.Pointer<jni$_.Void>,
                jni$_.JMethodIDPtr,
              )
            >
          >('globalEnv_CallObjectMethod')
          .asFunction<
            jni$_.JniResult Function(
              jni$_.Pointer<jni$_.Void>,
              jni$_.JMethodIDPtr,
            )
          >();

  /// from: `public java.lang.String toString()`
  /// The returned object must be released after use, by calling the [release] method.
  jni$_.JString toString$1() {
    return _toString$1(
      reference.pointer,
      _id_toString$1 as jni$_.JMethodIDPtr,
    ).object<jni$_.JString>(const jni$_.JStringType());
  }
}

final class $Position$NullableType extends jni$_.JObjType<Position?> {
  @jni$_.internal
  const $Position$NullableType();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/style/light/Position;';

  @jni$_.internal
  @core$_.override
  Position? fromReference(jni$_.JReference reference) =>
      reference.isNull ? null : Position.fromReference(reference);
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const jni$_.JObjectNullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<Position?> get nullableType => this;

  @jni$_.internal
  @core$_.override
  final superCount = 1;

  @core$_.override
  int get hashCode => ($Position$NullableType).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($Position$NullableType) &&
        other is $Position$NullableType;
  }
}

final class $Position$Type extends jni$_.JObjType<Position> {
  @jni$_.internal
  const $Position$Type();

  @jni$_.internal
  @core$_.override
  String get signature => r'Lorg/maplibre/android/style/light/Position;';

  @jni$_.internal
  @core$_.override
  Position fromReference(jni$_.JReference reference) =>
      Position.fromReference(reference);
  @jni$_.internal
  @core$_.override
  jni$_.JObjType get superType => const jni$_.JObjectNullableType();

  @jni$_.internal
  @core$_.override
  jni$_.JObjType<Position?> get nullableType => const $Position$NullableType();

  @jni$_.internal
  @core$_.override
  final superCount = 1;

  @core$_.override
  int get hashCode => ($Position$Type).hashCode;

  @core$_.override
  bool operator ==(Object other) {
    return other.runtimeType == ($Position$Type) && other is $Position$Type;
  }
}
