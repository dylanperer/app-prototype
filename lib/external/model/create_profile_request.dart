//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateProfileRequest {
  /// Returns a new [CreateProfileRequest] instance.
  CreateProfileRequest({
    required this.displayName,
    required this.description,
    required this.genderIdentity,
    required this.primaryImageUrl,
    this.imageUrls = const [],
    required this.age,
    required this.preferredGenderIdentity,
    required this.city,
    this.interests = const [],
    required this.occupation,
    this.maximumAcceptedDistance,
    this.preferredMinimumAge,
    this.preferredMaximumAge,
  });

  String displayName;

  String description;

  GenderIdentityRequest genderIdentity;

  String primaryImageUrl;

  List<String>? imageUrls;

  int age;

  GenderIdentityRequest preferredGenderIdentity;

  String city;

  List<InterestRequest> interests;

  OccupationRequest occupation;

  /// Minimum value: 1
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximumAcceptedDistance;

  /// Minimum value: 1
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMinimumAge;

  /// Minimum value: 1
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMaximumAge;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateProfileRequest &&
    other.displayName == displayName &&
    other.description == description &&
    other.genderIdentity == genderIdentity &&
    other.primaryImageUrl == primaryImageUrl &&
    _deepEquality.equals(other.imageUrls, imageUrls) &&
    other.age == age &&
    other.preferredGenderIdentity == preferredGenderIdentity &&
    other.city == city &&
    _deepEquality.equals(other.interests, interests) &&
    other.occupation == occupation &&
    other.maximumAcceptedDistance == maximumAcceptedDistance &&
    other.preferredMinimumAge == preferredMinimumAge &&
    other.preferredMaximumAge == preferredMaximumAge;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName.hashCode) +
    (description.hashCode) +
    (genderIdentity.hashCode) +
    (primaryImageUrl.hashCode) +
    (imageUrls == null ? 0 : imageUrls!.hashCode) +
    (age.hashCode) +
    (preferredGenderIdentity.hashCode) +
    (city.hashCode) +
    (interests.hashCode) +
    (occupation.hashCode) +
    (maximumAcceptedDistance == null ? 0 : maximumAcceptedDistance!.hashCode) +
    (preferredMinimumAge == null ? 0 : preferredMinimumAge!.hashCode) +
    (preferredMaximumAge == null ? 0 : preferredMaximumAge!.hashCode);

  @override
  String toString() => 'CreateProfileRequest[displayName=$displayName, description=$description, genderIdentity=$genderIdentity, primaryImageUrl=$primaryImageUrl, imageUrls=$imageUrls, age=$age, preferredGenderIdentity=$preferredGenderIdentity, city=$city, interests=$interests, occupation=$occupation, maximumAcceptedDistance=$maximumAcceptedDistance, preferredMinimumAge=$preferredMinimumAge, preferredMaximumAge=$preferredMaximumAge]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'displayName'] = this.displayName;
      json[r'description'] = this.description;
      json[r'genderIdentity'] = this.genderIdentity;
      json[r'primaryImageUrl'] = this.primaryImageUrl;
    if (this.imageUrls != null) {
      json[r'imageUrls'] = this.imageUrls;
    } else {
      json[r'imageUrls'] = null;
    }
      json[r'age'] = this.age;
      json[r'preferredGenderIdentity'] = this.preferredGenderIdentity;
      json[r'city'] = this.city;
      json[r'interests'] = this.interests;
      json[r'occupation'] = this.occupation;
    if (this.maximumAcceptedDistance != null) {
      json[r'maximumAcceptedDistance'] = this.maximumAcceptedDistance;
    } else {
      json[r'maximumAcceptedDistance'] = null;
    }
    if (this.preferredMinimumAge != null) {
      json[r'preferredMinimumAge'] = this.preferredMinimumAge;
    } else {
      json[r'preferredMinimumAge'] = null;
    }
    if (this.preferredMaximumAge != null) {
      json[r'preferredMaximumAge'] = this.preferredMaximumAge;
    } else {
      json[r'preferredMaximumAge'] = null;
    }
    return json;
  }

  /// Returns a new [CreateProfileRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateProfileRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateProfileRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateProfileRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateProfileRequest(
        displayName: mapValueOfType<String>(json, r'displayName')!,
        description: mapValueOfType<String>(json, r'description')!,
        genderIdentity: GenderIdentityRequest.fromJson(json[r'genderIdentity'])!,
        primaryImageUrl: mapValueOfType<String>(json, r'primaryImageUrl')!,
        imageUrls: json[r'imageUrls'] is Iterable
            ? (json[r'imageUrls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        age: mapValueOfType<int>(json, r'age')!,
        preferredGenderIdentity: GenderIdentityRequest.fromJson(json[r'preferredGenderIdentity'])!,
        city: mapValueOfType<String>(json, r'city')!,
        interests: InterestRequest.listFromJson(json[r'interests']),
        occupation: OccupationRequest.fromJson(json[r'occupation'])!,
        maximumAcceptedDistance: mapValueOfType<int>(json, r'maximumAcceptedDistance'),
        preferredMinimumAge: mapValueOfType<int>(json, r'preferredMinimumAge'),
        preferredMaximumAge: mapValueOfType<int>(json, r'preferredMaximumAge'),
      );
    }
    return null;
  }

  static List<CreateProfileRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProfileRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProfileRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateProfileRequest> mapFromJson(dynamic json) {
    final map = <String, CreateProfileRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProfileRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateProfileRequest-objects as value to a dart map
  static Map<String, List<CreateProfileRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateProfileRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateProfileRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'displayName',
    'description',
    'genderIdentity',
    'primaryImageUrl',
    'age',
    'preferredGenderIdentity',
    'city',
    'interests',
    'occupation',
  };
}

