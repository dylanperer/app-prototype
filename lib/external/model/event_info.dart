//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EventInfo {
  /// Returns a new [EventInfo] instance.
  EventInfo({
    this.name,
    this.declaringType,
    this.reflectedType,
    this.module,
    this.customAttributes = const [],
    this.isCollectible,
    this.metadataToken,
    this.memberType,
    this.attributes,
    this.isSpecialName,
    this.addMethod,
    this.removeMethod,
    this.raiseMethod,
    this.isMulticast,
    this.eventHandlerType,
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
  EventAttributes? attributes;

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
  MethodInfo? addMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MethodInfo? removeMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MethodInfo? raiseMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMulticast;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? eventHandlerType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventInfo &&
    other.name == name &&
    other.declaringType == declaringType &&
    other.reflectedType == reflectedType &&
    other.module == module &&
    _deepEquality.equals(other.customAttributes, customAttributes) &&
    other.isCollectible == isCollectible &&
    other.metadataToken == metadataToken &&
    other.memberType == memberType &&
    other.attributes == attributes &&
    other.isSpecialName == isSpecialName &&
    other.addMethod == addMethod &&
    other.removeMethod == removeMethod &&
    other.raiseMethod == raiseMethod &&
    other.isMulticast == isMulticast &&
    other.eventHandlerType == eventHandlerType;

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
    (attributes == null ? 0 : attributes!.hashCode) +
    (isSpecialName == null ? 0 : isSpecialName!.hashCode) +
    (addMethod == null ? 0 : addMethod!.hashCode) +
    (removeMethod == null ? 0 : removeMethod!.hashCode) +
    (raiseMethod == null ? 0 : raiseMethod!.hashCode) +
    (isMulticast == null ? 0 : isMulticast!.hashCode) +
    (eventHandlerType == null ? 0 : eventHandlerType!.hashCode);

  @override
  String toString() => 'EventInfo[name=$name, declaringType=$declaringType, reflectedType=$reflectedType, module=$module, customAttributes=$customAttributes, isCollectible=$isCollectible, metadataToken=$metadataToken, memberType=$memberType, attributes=$attributes, isSpecialName=$isSpecialName, addMethod=$addMethod, removeMethod=$removeMethod, raiseMethod=$raiseMethod, isMulticast=$isMulticast, eventHandlerType=$eventHandlerType]';

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
    if (this.addMethod != null) {
      json[r'addMethod'] = this.addMethod;
    } else {
      json[r'addMethod'] = null;
    }
    if (this.removeMethod != null) {
      json[r'removeMethod'] = this.removeMethod;
    } else {
      json[r'removeMethod'] = null;
    }
    if (this.raiseMethod != null) {
      json[r'raiseMethod'] = this.raiseMethod;
    } else {
      json[r'raiseMethod'] = null;
    }
    if (this.isMulticast != null) {
      json[r'isMulticast'] = this.isMulticast;
    } else {
      json[r'isMulticast'] = null;
    }
    if (this.eventHandlerType != null) {
      json[r'eventHandlerType'] = this.eventHandlerType;
    } else {
      json[r'eventHandlerType'] = null;
    }
    return json;
  }

  /// Returns a new [EventInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventInfo(
        name: mapValueOfType<String>(json, r'name'),
        declaringType: Type.fromJson(json[r'declaringType']),
        reflectedType: Type.fromJson(json[r'reflectedType']),
        module: Module.fromJson(json[r'module']),
        customAttributes: CustomAttributeData.listFromJson(json[r'customAttributes']),
        isCollectible: mapValueOfType<bool>(json, r'isCollectible'),
        metadataToken: mapValueOfType<int>(json, r'metadataToken'),
        memberType: MemberTypes.fromJson(json[r'memberType']),
        attributes: EventAttributes.fromJson(json[r'attributes']),
        isSpecialName: mapValueOfType<bool>(json, r'isSpecialName'),
        addMethod: MethodInfo.fromJson(json[r'addMethod']),
        removeMethod: MethodInfo.fromJson(json[r'removeMethod']),
        raiseMethod: MethodInfo.fromJson(json[r'raiseMethod']),
        isMulticast: mapValueOfType<bool>(json, r'isMulticast'),
        eventHandlerType: Type.fromJson(json[r'eventHandlerType']),
      );
    }
    return null;
  }

  static List<EventInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventInfo> mapFromJson(dynamic json) {
    final map = <String, EventInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventInfo-objects as value to a dart map
  static Map<String, List<EventInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

