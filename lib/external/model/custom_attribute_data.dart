//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CustomAttributeData {
  /// Returns a new [CustomAttributeData] instance.
  CustomAttributeData({
    this.attributeType,
    this.constructor,
    this.constructorArguments = const [],
    this.namedArguments = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? attributeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConstructorInfo? constructor;

  List<CustomAttributeTypedArgument>? constructorArguments;

  List<CustomAttributeNamedArgument>? namedArguments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomAttributeData &&
    other.attributeType == attributeType &&
    other.constructor == constructor &&
    _deepEquality.equals(other.constructorArguments, constructorArguments) &&
    _deepEquality.equals(other.namedArguments, namedArguments);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributeType == null ? 0 : attributeType!.hashCode) +
    (constructor == null ? 0 : constructor!.hashCode) +
    (constructorArguments == null ? 0 : constructorArguments!.hashCode) +
    (namedArguments == null ? 0 : namedArguments!.hashCode);

  @override
  String toString() => 'CustomAttributeData[attributeType=$attributeType, constructor=$constructor, constructorArguments=$constructorArguments, namedArguments=$namedArguments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attributeType != null) {
      json[r'attributeType'] = this.attributeType;
    } else {
      json[r'attributeType'] = null;
    }
    if (this.constructor != null) {
      json[r'constructor'] = this.constructor;
    } else {
      json[r'constructor'] = null;
    }
    if (this.constructorArguments != null) {
      json[r'constructorArguments'] = this.constructorArguments;
    } else {
      json[r'constructorArguments'] = null;
    }
    if (this.namedArguments != null) {
      json[r'namedArguments'] = this.namedArguments;
    } else {
      json[r'namedArguments'] = null;
    }
    return json;
  }

  /// Returns a new [CustomAttributeData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomAttributeData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomAttributeData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomAttributeData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomAttributeData(
        attributeType: Type.fromJson(json[r'attributeType']),
        constructor: ConstructorInfo.fromJson(json[r'constructor']),
        constructorArguments: CustomAttributeTypedArgument.listFromJson(json[r'constructorArguments']),
        namedArguments: CustomAttributeNamedArgument.listFromJson(json[r'namedArguments']),
      );
    }
    return null;
  }

  static List<CustomAttributeData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomAttributeData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomAttributeData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomAttributeData> mapFromJson(dynamic json) {
    final map = <String, CustomAttributeData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomAttributeData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomAttributeData-objects as value to a dart map
  static Map<String, List<CustomAttributeData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomAttributeData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomAttributeData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

