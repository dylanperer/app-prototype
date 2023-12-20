//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModuleHandle {
  /// Returns a new [ModuleHandle] instance.
  ModuleHandle({
    this.mdStreamVersion,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mdStreamVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModuleHandle &&
    other.mdStreamVersion == mdStreamVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mdStreamVersion == null ? 0 : mdStreamVersion!.hashCode);

  @override
  String toString() => 'ModuleHandle[mdStreamVersion=$mdStreamVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mdStreamVersion != null) {
      json[r'mdStreamVersion'] = this.mdStreamVersion;
    } else {
      json[r'mdStreamVersion'] = null;
    }
    return json;
  }

  /// Returns a new [ModuleHandle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModuleHandle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModuleHandle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModuleHandle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModuleHandle(
        mdStreamVersion: mapValueOfType<int>(json, r'mdStreamVersion'),
      );
    }
    return null;
  }

  static List<ModuleHandle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModuleHandle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModuleHandle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModuleHandle> mapFromJson(dynamic json) {
    final map = <String, ModuleHandle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModuleHandle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModuleHandle-objects as value to a dart map
  static Map<String, List<ModuleHandle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModuleHandle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModuleHandle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

