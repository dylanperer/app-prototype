//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CustomAttributeNamedArgument {
  /// Returns a new [CustomAttributeNamedArgument] instance.
  CustomAttributeNamedArgument({
    this.memberInfo,
    this.typedValue,
    this.memberName,
    this.isField,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberInfo? memberInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CustomAttributeTypedArgument? typedValue;

  String? memberName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isField;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomAttributeNamedArgument &&
    other.memberInfo == memberInfo &&
    other.typedValue == typedValue &&
    other.memberName == memberName &&
    other.isField == isField;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (memberInfo == null ? 0 : memberInfo!.hashCode) +
    (typedValue == null ? 0 : typedValue!.hashCode) +
    (memberName == null ? 0 : memberName!.hashCode) +
    (isField == null ? 0 : isField!.hashCode);

  @override
  String toString() => 'CustomAttributeNamedArgument[memberInfo=$memberInfo, typedValue=$typedValue, memberName=$memberName, isField=$isField]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.memberInfo != null) {
      json[r'memberInfo'] = this.memberInfo;
    } else {
      json[r'memberInfo'] = null;
    }
    if (this.typedValue != null) {
      json[r'typedValue'] = this.typedValue;
    } else {
      json[r'typedValue'] = null;
    }
    if (this.memberName != null) {
      json[r'memberName'] = this.memberName;
    } else {
      json[r'memberName'] = null;
    }
    if (this.isField != null) {
      json[r'isField'] = this.isField;
    } else {
      json[r'isField'] = null;
    }
    return json;
  }

  /// Returns a new [CustomAttributeNamedArgument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomAttributeNamedArgument? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomAttributeNamedArgument[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomAttributeNamedArgument[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomAttributeNamedArgument(
        memberInfo: MemberInfo.fromJson(json[r'memberInfo']),
        typedValue: CustomAttributeTypedArgument.fromJson(json[r'typedValue']),
        memberName: mapValueOfType<String>(json, r'memberName'),
        isField: mapValueOfType<bool>(json, r'isField'),
      );
    }
    return null;
  }

  static List<CustomAttributeNamedArgument> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomAttributeNamedArgument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomAttributeNamedArgument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomAttributeNamedArgument> mapFromJson(dynamic json) {
    final map = <String, CustomAttributeNamedArgument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomAttributeNamedArgument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomAttributeNamedArgument-objects as value to a dart map
  static Map<String, List<CustomAttributeNamedArgument>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomAttributeNamedArgument>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomAttributeNamedArgument.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

