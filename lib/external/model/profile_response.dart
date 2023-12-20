//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProfileResponse {
  /// Returns a new [ProfileResponse] instance.
  ProfileResponse({
    this.displayName,
    this.description,
    this.genderIdentity,
    this.primaryImageUrl,
    this.imageUrls = const [],
    this.age,
    this.city,
    this.interests = const [],
    this.occupation,
    this.maximumAcceptedDistance,
    this.preferredGenderIdentity,
    this.preferredMinimumAge,
    this.preferredMaximumAge,
  });

  String? displayName;

  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GenderIdentityResponse? genderIdentity;

  String? primaryImageUrl;

  List<String>? imageUrls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? age;

  String? city;

  List<InterestResponse>? interests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OccupationResponse? occupation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximumAcceptedDistance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GenderIdentityResponse? preferredGenderIdentity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMinimumAge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferredMaximumAge;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProfileResponse &&
    other.displayName == displayName &&
    other.description == description &&
    other.genderIdentity == genderIdentity &&
    other.primaryImageUrl == primaryImageUrl &&
    _deepEquality.equals(other.imageUrls, imageUrls) &&
    other.age == age &&
    other.city == city &&
    _deepEquality.equals(other.interests, interests) &&
    other.occupation == occupation &&
    other.maximumAcceptedDistance == maximumAcceptedDistance &&
    other.preferredGenderIdentity == preferredGenderIdentity &&
    other.preferredMinimumAge == preferredMinimumAge &&
    other.preferredMaximumAge == preferredMaximumAge;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (genderIdentity == null ? 0 : genderIdentity!.hashCode) +
    (primaryImageUrl == null ? 0 : primaryImageUrl!.hashCode) +
    (imageUrls == null ? 0 : imageUrls!.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (interests == null ? 0 : interests!.hashCode) +
    (occupation == null ? 0 : occupation!.hashCode) +
    (maximumAcceptedDistance == null ? 0 : maximumAcceptedDistance!.hashCode) +
    (preferredGenderIdentity == null ? 0 : preferredGenderIdentity!.hashCode) +
    (preferredMinimumAge == null ? 0 : preferredMinimumAge!.hashCode) +
    (preferredMaximumAge == null ? 0 : preferredMaximumAge!.hashCode);

  @override
  String toString() => 'ProfileResponse[displayName=$displayName, description=$description, genderIdentity=$genderIdentity, primaryImageUrl=$primaryImageUrl, imageUrls=$imageUrls, age=$age, city=$city, interests=$interests, occupation=$occupation, maximumAcceptedDistance=$maximumAcceptedDistance, preferredGenderIdentity=$preferredGenderIdentity, preferredMinimumAge=$preferredMinimumAge, preferredMaximumAge=$preferredMaximumAge]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.genderIdentity != null) {
      json[r'genderIdentity'] = this.genderIdentity;
    } else {
      json[r'genderIdentity'] = null;
    }
    if (this.primaryImageUrl != null) {
      json[r'primaryImageUrl'] = this.primaryImageUrl;
    } else {
      json[r'primaryImageUrl'] = null;
    }
    if (this.imageUrls != null) {
      json[r'imageUrls'] = this.imageUrls;
    } else {
      json[r'imageUrls'] = null;
    }
    if (this.age != null) {
      json[r'age'] = this.age;
    } else {
      json[r'age'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.interests != null) {
      json[r'interests'] = this.interests;
    } else {
      json[r'interests'] = null;
    }
    if (this.occupation != null) {
      json[r'occupation'] = this.occupation;
    } else {
      json[r'occupation'] = null;
    }
    if (this.maximumAcceptedDistance != null) {
      json[r'maximumAcceptedDistance'] = this.maximumAcceptedDistance;
    } else {
      json[r'maximumAcceptedDistance'] = null;
    }
    if (this.preferredGenderIdentity != null) {
      json[r'preferredGenderIdentity'] = this.preferredGenderIdentity;
    } else {
      json[r'preferredGenderIdentity'] = null;
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

  /// Returns a new [ProfileResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProfileResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProfileResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProfileResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProfileResponse(
        displayName: mapValueOfType<String>(json, r'displayName'),
        description: mapValueOfType<String>(json, r'description'),
        genderIdentity: GenderIdentityResponse.fromJson(json[r'genderIdentity']),
        primaryImageUrl: mapValueOfType<String>(json, r'primaryImageUrl'),
        imageUrls: json[r'imageUrls'] is Iterable
            ? (json[r'imageUrls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        age: mapValueOfType<int>(json, r'age'),
        city: mapValueOfType<String>(json, r'city'),
        interests: InterestResponse.listFromJson(json[r'interests']),
        occupation: OccupationResponse.fromJson(json[r'occupation']),
        maximumAcceptedDistance: mapValueOfType<int>(json, r'maximumAcceptedDistance'),
        preferredGenderIdentity: GenderIdentityResponse.fromJson(json[r'preferredGenderIdentity']),
        preferredMinimumAge: mapValueOfType<int>(json, r'preferredMinimumAge'),
        preferredMaximumAge: mapValueOfType<int>(json, r'preferredMaximumAge'),
      );
    }
    return null;
  }

  static List<ProfileResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProfileResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProfileResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProfileResponse> mapFromJson(dynamic json) {
    final map = <String, ProfileResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProfileResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProfileResponse-objects as value to a dart map
  static Map<String, List<ProfileResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProfileResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProfileResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

