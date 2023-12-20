//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemberInfo {
  /// Returns a new [MemberInfo] instance.
  MemberInfo({
    this.memberType,
    this.name,
    this.declaringType,
    this.reflectedType,
    this.module,
    this.customAttributes = const [],
    this.isCollectible,
    this.metadataToken,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberTypes? memberType;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is MemberInfo &&
    other.memberType == memberType &&
    other.name == name &&
    other.declaringType == declaringType &&
    other.reflectedType == reflectedType &&
    other.module == module &&
    _deepEquality.equals(other.customAttributes, customAttributes) &&
    other.isCollectible == isCollectible &&
    other.metadataToken == metadataToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (memberType == null ? 0 : memberType!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (declaringType == null ? 0 : declaringType!.hashCode) +
    (reflectedType == null ? 0 : reflectedType!.hashCode) +
    (module == null ? 0 : module!.hashCode) +
    (customAttributes == null ? 0 : customAttributes!.hashCode) +
    (isCollectible == null ? 0 : isCollectible!.hashCode) +
    (metadataToken == null ? 0 : metadataToken!.hashCode);

  @override
  String toString() => 'MemberInfo[memberType=$memberType, name=$name, declaringType=$declaringType, reflectedType=$reflectedType, module=$module, customAttributes=$customAttributes, isCollectible=$isCollectible, metadataToken=$metadataToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.memberType != null) {
      json[r'memberType'] = this.memberType;
    } else {
      json[r'memberType'] = null;
    }
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
    return json;
  }

  /// Returns a new [MemberInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MemberInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MemberInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MemberInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MemberInfo(
        memberType: MemberTypes.fromJson(json[r'memberType']),
        name: mapValueOfType<String>(json, r'name'),
        declaringType: Type.fromJson(json[r'declaringType']),
        reflectedType: Type.fromJson(json[r'reflectedType']),
        module: Module.fromJson(json[r'module']),
        customAttributes: CustomAttributeData.listFromJson(json[r'customAttributes']),
        isCollectible: mapValueOfType<bool>(json, r'isCollectible'),
        metadataToken: mapValueOfType<int>(json, r'metadataToken'),
      );
    }
    return null;
  }

  static List<MemberInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MemberInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemberInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MemberInfo> mapFromJson(dynamic json) {
    final map = <String, MemberInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MemberInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MemberInfo-objects as value to a dart map
  static Map<String, List<MemberInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MemberInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MemberInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

