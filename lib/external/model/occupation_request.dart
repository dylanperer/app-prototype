//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OccupationRequest {
  /// Returns a new [OccupationRequest] instance.
  OccupationRequest({
    this.occupationId,
    required this.value,
  });

  /// Minimum value: 1
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? occupationId;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OccupationRequest &&
    other.occupationId == occupationId &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (occupationId == null ? 0 : occupationId!.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'OccupationRequest[occupationId=$occupationId, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.occupationId != null) {
      json[r'occupationId'] = this.occupationId;
    } else {
      json[r'occupationId'] = null;
    }
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [OccupationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OccupationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OccupationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OccupationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OccupationRequest(
        occupationId: mapValueOfType<int>(json, r'occupationId'),
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<OccupationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OccupationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OccupationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OccupationRequest> mapFromJson(dynamic json) {
    final map = <String, OccupationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OccupationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OccupationRequest-objects as value to a dart map
  static Map<String, List<OccupationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OccupationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OccupationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
  };
}

