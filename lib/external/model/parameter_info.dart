//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ParameterInfo {
  /// Returns a new [ParameterInfo] instance.
  ParameterInfo({
    this.attributes,
    this.member,
    this.name,
    this.parameterType,
    this.position,
    this.isIn,
    this.isLcid,
    this.isOptional,
    this.isOut,
    this.isRetval,
    this.defaultValue,
    this.rawDefaultValue,
    this.hasDefaultValue,
    this.customAttributes = const [],
    this.metadataToken,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ParameterAttributes? attributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberInfo? member;

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? parameterType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLcid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOptional;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOut;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRetval;

  Object? defaultValue;

  Object? rawDefaultValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasDefaultValue;

  List<CustomAttributeData>? customAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? metadataToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParameterInfo &&
    other.attributes == attributes &&
    other.member == member &&
    other.name == name &&
    other.parameterType == parameterType &&
    other.position == position &&
    other.isIn == isIn &&
    other.isLcid == isLcid &&
    other.isOptional == isOptional &&
    other.isOut == isOut &&
    other.isRetval == isRetval &&
    other.defaultValue == defaultValue &&
    other.rawDefaultValue == rawDefaultValue &&
    other.hasDefaultValue == hasDefaultValue &&
    _deepEquality.equals(other.customAttributes, customAttributes) &&
    other.metadataToken == metadataToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributes == null ? 0 : attributes!.hashCode) +
    (member == null ? 0 : member!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (parameterType == null ? 0 : parameterType!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (isIn == null ? 0 : isIn!.hashCode) +
    (isLcid == null ? 0 : isLcid!.hashCode) +
    (isOptional == null ? 0 : isOptional!.hashCode) +
    (isOut == null ? 0 : isOut!.hashCode) +
    (isRetval == null ? 0 : isRetval!.hashCode) +
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (rawDefaultValue == null ? 0 : rawDefaultValue!.hashCode) +
    (hasDefaultValue == null ? 0 : hasDefaultValue!.hashCode) +
    (customAttributes == null ? 0 : customAttributes!.hashCode) +
    (metadataToken == null ? 0 : metadataToken!.hashCode);

  @override
  String toString() => 'ParameterInfo[attributes=$attributes, member=$member, name=$name, parameterType=$parameterType, position=$position, isIn=$isIn, isLcid=$isLcid, isOptional=$isOptional, isOut=$isOut, isRetval=$isRetval, defaultValue=$defaultValue, rawDefaultValue=$rawDefaultValue, hasDefaultValue=$hasDefaultValue, customAttributes=$customAttributes, metadataToken=$metadataToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
    if (this.member != null) {
      json[r'member'] = this.member;
    } else {
      json[r'member'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.parameterType != null) {
      json[r'parameterType'] = this.parameterType;
    } else {
      json[r'parameterType'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.isIn != null) {
      json[r'isIn'] = this.isIn;
    } else {
      json[r'isIn'] = null;
    }
    if (this.isLcid != null) {
      json[r'isLcid'] = this.isLcid;
    } else {
      json[r'isLcid'] = null;
    }
    if (this.isOptional != null) {
      json[r'isOptional'] = this.isOptional;
    } else {
      json[r'isOptional'] = null;
    }
    if (this.isOut != null) {
      json[r'isOut'] = this.isOut;
    } else {
      json[r'isOut'] = null;
    }
    if (this.isRetval != null) {
      json[r'isRetval'] = this.isRetval;
    } else {
      json[r'isRetval'] = null;
    }
    if (this.defaultValue != null) {
      json[r'defaultValue'] = this.defaultValue;
    } else {
      json[r'defaultValue'] = null;
    }
    if (this.rawDefaultValue != null) {
      json[r'rawDefaultValue'] = this.rawDefaultValue;
    } else {
      json[r'rawDefaultValue'] = null;
    }
    if (this.hasDefaultValue != null) {
      json[r'hasDefaultValue'] = this.hasDefaultValue;
    } else {
      json[r'hasDefaultValue'] = null;
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

  /// Returns a new [ParameterInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParameterInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParameterInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParameterInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParameterInfo(
        attributes: ParameterAttributes.fromJson(json[r'attributes']),
        member: MemberInfo.fromJson(json[r'member']),
        name: mapValueOfType<String>(json, r'name'),
        parameterType: Type.fromJson(json[r'parameterType']),
        position: mapValueOfType<int>(json, r'position'),
        isIn: mapValueOfType<bool>(json, r'isIn'),
        isLcid: mapValueOfType<bool>(json, r'isLcid'),
        isOptional: mapValueOfType<bool>(json, r'isOptional'),
        isOut: mapValueOfType<bool>(json, r'isOut'),
        isRetval: mapValueOfType<bool>(json, r'isRetval'),
        defaultValue: mapValueOfType<Object>(json, r'defaultValue'),
        rawDefaultValue: mapValueOfType<Object>(json, r'rawDefaultValue'),
        hasDefaultValue: mapValueOfType<bool>(json, r'hasDefaultValue'),
        customAttributes: CustomAttributeData.listFromJson(json[r'customAttributes']),
        metadataToken: mapValueOfType<int>(json, r'metadataToken'),
      );
    }
    return null;
  }

  static List<ParameterInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParameterInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParameterInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParameterInfo> mapFromJson(dynamic json) {
    final map = <String, ParameterInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParameterInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParameterInfo-objects as value to a dart map
  static Map<String, List<ParameterInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParameterInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ParameterInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

