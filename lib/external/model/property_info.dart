//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PropertyInfo {
  /// Returns a new [PropertyInfo] instance.
  PropertyInfo({
    this.name,
    this.declaringType,
    this.reflectedType,
    this.module,
    this.customAttributes = const [],
    this.isCollectible,
    this.metadataToken,
    this.memberType,
    this.propertyType,
    this.attributes,
    this.isSpecialName,
    this.canRead,
    this.canWrite,
    this.getMethod,
    this.setMethod,
  });

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? declaringType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? reflectedType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Module? module;

  List<CustomAttributeData>? customAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCollectible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? metadataToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberTypes? memberType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? propertyType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PropertyAttributes? attributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSpecialName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canRead;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canWrite;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MethodInfo? getMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MethodInfo? setMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PropertyInfo &&
    other.name == name &&
    other.declaringType == declaringType &&
    other.reflectedType == reflectedType &&
    other.module == module &&
    _deepEquality.equals(other.customAttributes, customAttributes) &&
    other.isCollectible == isCollectible &&
    other.metadataToken == metadataToken &&
    other.memberType == memberType &&
    other.propertyType == propertyType &&
    other.attributes == attributes &&
    other.isSpecialName == isSpecialName &&
    other.canRead == canRead &&
    other.canWrite == canWrite &&
    other.getMethod == getMethod &&
    other.setMethod == setMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (declaringType == null ? 0 : declaringType!.hashCode) +
    (reflectedType == null ? 0 : reflectedType!.hashCode) +
    (module == null ? 0 : module!.hashCode) +
    (customAttributes == null ? 0 : customAttributes!.hashCode) +
    (isCollectible == null ? 0 : isCollectible!.hashCode) +
    (metadataToken == null ? 0 : metadataToken!.hashCode) +
    (memberType == null ? 0 : memberType!.hashCode) +
    (propertyType == null ? 0 : propertyType!.hashCode) +
    (attributes == null ? 0 : attributes!.hashCode) +
    (isSpecialName == null ? 0 : isSpecialName!.hashCode) +
    (canRead == null ? 0 : canRead!.hashCode) +
    (canWrite == null ? 0 : canWrite!.hashCode) +
    (getMethod == null ? 0 : getMethod!.hashCode) +
    (setMethod == null ? 0 : setMethod!.hashCode);

  @override
  String toString() => 'PropertyInfo[name=$name, declaringType=$declaringType, reflectedType=$reflectedType, module=$module, customAttributes=$customAttributes, isCollectible=$isCollectible, metadataToken=$metadataToken, memberType=$memberType, propertyType=$propertyType, attributes=$attributes, isSpecialName=$isSpecialName, canRead=$canRead, canWrite=$canWrite, getMethod=$getMethod, setMethod=$setMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.declaringType != null) {
      json[r'declaringType'] = this.declaringType;
    } else {
      json[r'declaringType'] = null;
    }
    if (this.reflectedType != null) {
      json[r'reflectedType'] = this.reflectedType;
    } else {
      json[r'reflectedType'] = null;
    }
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    if (this.customAttributes != null) {
      json[r'customAttributes'] = this.customAttributes;
    } else {
      json[r'customAttributes'] = null;
    }
    if (this.isCollectible != null) {
      json[r'isCollectible'] = this.isCollectible;
    } else {
      json[r'isCollectible'] = null;
    }
    if (this.metadataToken != null) {
      json[r'metadataToken'] = this.metadataToken;
    } else {
      json[r'metadataToken'] = null;
    }
    if (this.memberType != null) {
      json[r'memberType'] = this.memberType;
    } else {
      json[r'memberType'] = null;
    }
    if (this.propertyType != null) {
      json[r'propertyType'] = this.propertyType;
    } else {
      json[r'propertyType'] = null;
    }
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
    if (this.isSpecialName != null) {
      json[r'isSpecialName'] = this.isSpecialName;
    } else {
      json[r'isSpecialName'] = null;
    }
    if (this.canRead != null) {
      json[r'canRead'] = this.canRead;
    } else {
      json[r'canRead'] = null;
    }
    if (this.canWrite != null) {
      json[r'canWrite'] = this.canWrite;
    } else {
      json[r'canWrite'] = null;
    }
    if (this.getMethod != null) {
      json[r'getMethod'] = this.getMethod;
    } else {
      json[r'getMethod'] = null;
    }
    if (this.setMethod != null) {
      json[r'setMethod'] = this.setMethod;
    } else {
      json[r'setMethod'] = null;
    }
    return json;
  }

  /// Returns a new [PropertyInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PropertyInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PropertyInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PropertyInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PropertyInfo(
        name: mapValueOfType<String>(json, r'name'),
        declaringType: Type.fromJson(json[r'declaringType']),
        reflectedType: Type.fromJson(json[r'reflectedType']),
        module: Module.fromJson(json[r'module']),
        customAttributes: CustomAttributeData.listFromJson(json[r'customAttributes']),
        isCollectible: mapValueOfType<bool>(json, r'isCollectible'),
        metadataToken: mapValueOfType<int>(json, r'metadataToken'),
        memberType: MemberTypes.fromJson(json[r'memberType']),
        propertyType: Type.fromJson(json[r'propertyType']),
        attributes: PropertyAttributes.fromJson(json[r'attributes']),
        isSpecialName: mapValueOfType<bool>(json, r'isSpecialName'),
        canRead: mapValueOfType<bool>(json, r'canRead'),
        canWrite: mapValueOfType<bool>(json, r'canWrite'),
        getMethod: MethodInfo.fromJson(json[r'getMethod']),
        setMethod: MethodInfo.fromJson(json[r'setMethod']),
      );
    }
    return null;
  }

  static List<PropertyInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PropertyInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PropertyInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PropertyInfo> mapFromJson(dynamic json) {
    final map = <String, PropertyInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PropertyInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PropertyInfo-objects as value to a dart map
  static Map<String, List<PropertyInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PropertyInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PropertyInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

