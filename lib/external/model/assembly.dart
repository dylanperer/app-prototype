//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Assembly {
  /// Returns a new [Assembly] instance.
  Assembly({
    this.definedTypes = const [],
    this.exportedTypes = const [],
    this.codeBase,
    this.entryPoint,
    this.fullName,
    this.imageRuntimeVersion,
    this.isDynamic,
    this.location,
    this.reflectionOnly,
    this.isCollectible,
    this.isFullyTrusted,
    this.customAttributes = const [],
    this.escapedCodeBase,
    this.manifestModule,
    this.modules = const [],
    this.globalAssemblyCache,
    this.hostContext,
    this.securityRuleSet,
  });

  List<TypeInfo>? definedTypes;

  List<Type>? exportedTypes;

  String? codeBase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MethodInfo? entryPoint;

  String? fullName;

  String? imageRuntimeVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDynamic;

  String? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reflectionOnly;

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
  bool? isFullyTrusted;

  List<CustomAttributeData>? customAttributes;

  String? escapedCodeBase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Module? manifestModule;

  List<Module>? modules;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? globalAssemblyCache;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hostContext;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SecurityRuleSet? securityRuleSet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Assembly &&
    _deepEquality.equals(other.definedTypes, definedTypes) &&
    _deepEquality.equals(other.exportedTypes, exportedTypes) &&
    other.codeBase == codeBase &&
    other.entryPoint == entryPoint &&
    other.fullName == fullName &&
    other.imageRuntimeVersion == imageRuntimeVersion &&
    other.isDynamic == isDynamic &&
    other.location == location &&
    other.reflectionOnly == reflectionOnly &&
    other.isCollectible == isCollectible &&
    other.isFullyTrusted == isFullyTrusted &&
    _deepEquality.equals(other.customAttributes, customAttributes) &&
    other.escapedCodeBase == escapedCodeBase &&
    other.manifestModule == manifestModule &&
    _deepEquality.equals(other.modules, modules) &&
    other.globalAssemblyCache == globalAssemblyCache &&
    other.hostContext == hostContext &&
    other.securityRuleSet == securityRuleSet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (definedTypes == null ? 0 : definedTypes!.hashCode) +
    (exportedTypes == null ? 0 : exportedTypes!.hashCode) +
    (codeBase == null ? 0 : codeBase!.hashCode) +
    (entryPoint == null ? 0 : entryPoint!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (imageRuntimeVersion == null ? 0 : imageRuntimeVersion!.hashCode) +
    (isDynamic == null ? 0 : isDynamic!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (reflectionOnly == null ? 0 : reflectionOnly!.hashCode) +
    (isCollectible == null ? 0 : isCollectible!.hashCode) +
    (isFullyTrusted == null ? 0 : isFullyTrusted!.hashCode) +
    (customAttributes == null ? 0 : customAttributes!.hashCode) +
    (escapedCodeBase == null ? 0 : escapedCodeBase!.hashCode) +
    (manifestModule == null ? 0 : manifestModule!.hashCode) +
    (modules == null ? 0 : modules!.hashCode) +
    (globalAssemblyCache == null ? 0 : globalAssemblyCache!.hashCode) +
    (hostContext == null ? 0 : hostContext!.hashCode) +
    (securityRuleSet == null ? 0 : securityRuleSet!.hashCode);

  @override
  String toString() => 'Assembly[definedTypes=$definedTypes, exportedTypes=$exportedTypes, codeBase=$codeBase, entryPoint=$entryPoint, fullName=$fullName, imageRuntimeVersion=$imageRuntimeVersion, isDynamic=$isDynamic, location=$location, reflectionOnly=$reflectionOnly, isCollectible=$isCollectible, isFullyTrusted=$isFullyTrusted, customAttributes=$customAttributes, escapedCodeBase=$escapedCodeBase, manifestModule=$manifestModule, modules=$modules, globalAssemblyCache=$globalAssemblyCache, hostContext=$hostContext, securityRuleSet=$securityRuleSet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.definedTypes != null) {
      json[r'definedTypes'] = this.definedTypes;
    } else {
      json[r'definedTypes'] = null;
    }
    if (this.exportedTypes != null) {
      json[r'exportedTypes'] = this.exportedTypes;
    } else {
      json[r'exportedTypes'] = null;
    }
    if (this.codeBase != null) {
      json[r'codeBase'] = this.codeBase;
    } else {
      json[r'codeBase'] = null;
    }
    if (this.entryPoint != null) {
      json[r'entryPoint'] = this.entryPoint;
    } else {
      json[r'entryPoint'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.imageRuntimeVersion != null) {
      json[r'imageRuntimeVersion'] = this.imageRuntimeVersion;
    } else {
      json[r'imageRuntimeVersion'] = null;
    }
    if (this.isDynamic != null) {
      json[r'isDynamic'] = this.isDynamic;
    } else {
      json[r'isDynamic'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.reflectionOnly != null) {
      json[r'reflectionOnly'] = this.reflectionOnly;
    } else {
      json[r'reflectionOnly'] = null;
    }
    if (this.isCollectible != null) {
      json[r'isCollectible'] = this.isCollectible;
    } else {
      json[r'isCollectible'] = null;
    }
    if (this.isFullyTrusted != null) {
      json[r'isFullyTrusted'] = this.isFullyTrusted;
    } else {
      json[r'isFullyTrusted'] = null;
    }
    if (this.customAttributes != null) {
      json[r'customAttributes'] = this.customAttributes;
    } else {
      json[r'customAttributes'] = null;
    }
    if (this.escapedCodeBase != null) {
      json[r'escapedCodeBase'] = this.escapedCodeBase;
    } else {
      json[r'escapedCodeBase'] = null;
    }
    if (this.manifestModule != null) {
      json[r'manifestModule'] = this.manifestModule;
    } else {
      json[r'manifestModule'] = null;
    }
    if (this.modules != null) {
      json[r'modules'] = this.modules;
    } else {
      json[r'modules'] = null;
    }
    if (this.globalAssemblyCache != null) {
      json[r'globalAssemblyCache'] = this.globalAssemblyCache;
    } else {
      json[r'globalAssemblyCache'] = null;
    }
    if (this.hostContext != null) {
      json[r'hostContext'] = this.hostContext;
    } else {
      json[r'hostContext'] = null;
    }
    if (this.securityRuleSet != null) {
      json[r'securityRuleSet'] = this.securityRuleSet;
    } else {
      json[r'securityRuleSet'] = null;
    }
    return json;
  }

  /// Returns a new [Assembly] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Assembly? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Assembly[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Assembly[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Assembly(
        definedTypes: TypeInfo.listFromJson(json[r'definedTypes']),
        exportedTypes: Type.listFromJson(json[r'exportedTypes']),
        codeBase: mapValueOfType<String>(json, r'codeBase'),
        entryPoint: MethodInfo.fromJson(json[r'entryPoint']),
        fullName: mapValueOfType<String>(json, r'fullName'),
        imageRuntimeVersion: mapValueOfType<String>(json, r'imageRuntimeVersion'),
        isDynamic: mapValueOfType<bool>(json, r'isDynamic'),
        location: mapValueOfType<String>(json, r'location'),
        reflectionOnly: mapValueOfType<bool>(json, r'reflectionOnly'),
        isCollectible: mapValueOfType<bool>(json, r'isCollectible'),
        isFullyTrusted: mapValueOfType<bool>(json, r'isFullyTrusted'),
        customAttributes: CustomAttributeData.listFromJson(json[r'customAttributes']),
        escapedCodeBase: mapValueOfType<String>(json, r'escapedCodeBase'),
        manifestModule: Module.fromJson(json[r'manifestModule']),
        modules: Module.listFromJson(json[r'modules']),
        globalAssemblyCache: mapValueOfType<bool>(json, r'globalAssemblyCache'),
        hostContext: mapValueOfType<int>(json, r'hostContext'),
        securityRuleSet: SecurityRuleSet.fromJson(json[r'securityRuleSet']),
      );
    }
    return null;
  }

  static List<Assembly> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Assembly>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Assembly.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Assembly> mapFromJson(dynamic json) {
    final map = <String, Assembly>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Assembly.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Assembly-objects as value to a dart map
  static Map<String, List<Assembly>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Assembly>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Assembly.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

