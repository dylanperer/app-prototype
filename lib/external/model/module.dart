//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Module {
  /// Returns a new [Module] instance.
  Module({
    this.assembly,
    this.fullyQualifiedName,
    this.name,
    this.mdStreamVersion,
    this.moduleVersionId,
    this.scopeName,
    this.moduleHandle,
    this.customAttributes = const [],
    this.metadataToken,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Assembly? assembly;

  String? fullyQualifiedName;

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mdStreamVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? moduleVersionId;

  String? scopeName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModuleHandle? moduleHandle;

  List<CustomAttributeData>? customAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? metadataToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Module &&
    other.assembly == assembly &&
    other.fullyQualifiedName == fullyQualifiedName &&
    other.name == name &&
    other.mdStreamVersion == mdStreamVersion &&
    other.moduleVersionId == moduleVersionId &&
    other.scopeName == scopeName &&
    other.moduleHandle == moduleHandle &&
    _deepEquality.equals(other.customAttributes, customAttributes) &&
    other.metadataToken == metadataToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assembly == null ? 0 : assembly!.hashCode) +
    (fullyQualifiedName == null ? 0 : fullyQualifiedName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (mdStreamVersion == null ? 0 : mdStreamVersion!.hashCode) +
    (moduleVersionId == null ? 0 : moduleVersionId!.hashCode) +
    (scopeName == null ? 0 : scopeName!.hashCode) +
    (moduleHandle == null ? 0 : moduleHandle!.hashCode) +
    (customAttributes == null ? 0 : customAttributes!.hashCode) +
    (metadataToken == null ? 0 : metadataToken!.hashCode);

  @override
  String toString() => 'Module[assembly=$assembly, fullyQualifiedName=$fullyQualifiedName, name=$name, mdStreamVersion=$mdStreamVersion, moduleVersionId=$moduleVersionId, scopeName=$scopeName, moduleHandle=$moduleHandle, customAttributes=$customAttributes, metadataToken=$metadataToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assembly != null) {
      json[r'assembly'] = this.assembly;
    } else {
      json[r'assembly'] = null;
    }
    if (this.fullyQualifiedName != null) {
      json[r'fullyQualifiedName'] = this.fullyQualifiedName;
    } else {
      json[r'fullyQualifiedName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.mdStreamVersion != null) {
      json[r'mdStreamVersion'] = this.mdStreamVersion;
    } else {
      json[r'mdStreamVersion'] = null;
    }
    if (this.moduleVersionId != null) {
      json[r'moduleVersionId'] = this.moduleVersionId;
    } else {
      json[r'moduleVersionId'] = null;
    }
    if (this.scopeName != null) {
      json[r'scopeName'] = this.scopeName;
    } else {
      json[r'scopeName'] = null;
    }
    if (this.moduleHandle != null) {
      json[r'moduleHandle'] = this.moduleHandle;
    } else {
      json[r'moduleHandle'] = null;
    }
    if (this.customAttributes != null) {
      json[r'customAttributes'] = this.customAttributes;
    } else {
      json[r'customAttributes'] = null;
    }
    if (this.metadataToken != null) {
      json[r'metadataToken'] = this.metadataToken;
    } else {
      json[r'metadataToken'] = null;
    }
    return json;
  }

  /// Returns a new [Module] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Module? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Module[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Module[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Module(
        assembly: Assembly.fromJson(json[r'assembly']),
        fullyQualifiedName: mapValueOfType<String>(json, r'fullyQualifiedName'),
        name: mapValueOfType<String>(json, r'name'),
        mdStreamVersion: mapValueOfType<int>(json, r'mdStreamVersion'),
        moduleVersionId: mapValueOfType<String>(json, r'moduleVersionId'),
        scopeName: mapValueOfType<String>(json, r'scopeName'),
        moduleHandle: ModuleHandle.fromJson(json[r'moduleHandle']),
        customAttributes: CustomAttributeData.listFromJson(json[r'customAttributes']),
        metadataToken: mapValueOfType<int>(json, r'metadataToken'),
      );
    }
    return null;
  }

  static List<Module> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Module>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Module.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Module> mapFromJson(dynamic json) {
    final map = <String, Module>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Module.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Module-objects as value to a dart map
  static Map<String, List<Module>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Module>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Module.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

