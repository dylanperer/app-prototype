//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Exception {
  /// Returns a new [Exception] instance.
  Exception({
    this.targetSite,
    this.message,
    this.data = const {},
    this.innerException,
    this.helpLink,
    this.source_,
    this.hResult,
    this.stackTrace,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MethodBase? targetSite;

  String? message;

  Map<String, Object>? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Exception? innerException;

  String? helpLink;

  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hResult;

  String? stackTrace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Exception &&
    other.targetSite == targetSite &&
    other.message == message &&
    _deepEquality.equals(other.data, data) &&
    other.innerException == innerException &&
    other.helpLink == helpLink &&
    other.source_ == source_ &&
    other.hResult == hResult &&
    other.stackTrace == stackTrace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targetSite == null ? 0 : targetSite!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (innerException == null ? 0 : innerException!.hashCode) +
    (helpLink == null ? 0 : helpLink!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (hResult == null ? 0 : hResult!.hashCode) +
    (stackTrace == null ? 0 : stackTrace!.hashCode);

  @override
  String toString() => 'Exception[targetSite=$targetSite, message=$message, data=$data, innerException=$innerException, helpLink=$helpLink, source_=$source_, hResult=$hResult, stackTrace=$stackTrace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.targetSite != null) {
      json[r'targetSite'] = this.targetSite;
    } else {
      json[r'targetSite'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.innerException != null) {
      json[r'innerException'] = this.innerException;
    } else {
      json[r'innerException'] = null;
    }
    if (this.helpLink != null) {
      json[r'helpLink'] = this.helpLink;
    } else {
      json[r'helpLink'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.hResult != null) {
      json[r'hResult'] = this.hResult;
    } else {
      json[r'hResult'] = null;
    }
    if (this.stackTrace != null) {
      json[r'stackTrace'] = this.stackTrace;
    } else {
      json[r'stackTrace'] = null;
    }
    return json;
  }

  /// Returns a new [Exception] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Exception? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Exception[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Exception[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Exception(
        targetSite: MethodBase.fromJson(json[r'targetSite']),
        message: mapValueOfType<String>(json, r'message'),
        data: mapCastOfType<String, Object>(json, r'data') ?? const {},
        innerException: Exception.fromJson(json[r'innerException']),
        helpLink: mapValueOfType<String>(json, r'helpLink'),
        source_: mapValueOfType<String>(json, r'source'),
        hResult: mapValueOfType<int>(json, r'hResult'),
        stackTrace: mapValueOfType<String>(json, r'stackTrace'),
      );
    }
    return null;
  }

  static List<Exception> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Exception>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Exception.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Exception> mapFromJson(dynamic json) {
    final map = <String, Exception>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Exception.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Exception-objects as value to a dart map
  static Map<String, List<Exception>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Exception>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Exception.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

