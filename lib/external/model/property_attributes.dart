//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PropertyAttributes {
  /// Instantiate a new enum with the provided [value].
  const PropertyAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = PropertyAttributes._(0);
  static const number512 = PropertyAttributes._(512);
  static const number1024 = PropertyAttributes._(1024);
  static const number4096 = PropertyAttributes._(4096);
  static const number8192 = PropertyAttributes._(8192);
  static const number16384 = PropertyAttributes._(16384);
  static const number32768 = PropertyAttributes._(32768);
  static const number62464 = PropertyAttributes._(62464);

  /// List of all possible values in this [enum][PropertyAttributes].
  static const values = <PropertyAttributes>[
    number0,
    number512,
    number1024,
    number4096,
    number8192,
    number16384,
    number32768,
    number62464,
  ];

  static PropertyAttributes? fromJson(dynamic value) => PropertyAttributesTypeTransformer().decode(value);

  static List<PropertyAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PropertyAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PropertyAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PropertyAttributes] to int,
/// and [decode] dynamic data back to [PropertyAttributes].
class PropertyAttributesTypeTransformer {
  factory PropertyAttributesTypeTransformer() => _instance ??= const PropertyAttributesTypeTransformer._();

  const PropertyAttributesTypeTransformer._();

  int encode(PropertyAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a PropertyAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PropertyAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return PropertyAttributes.number0;
        case 512: return PropertyAttributes.number512;
        case 1024: return PropertyAttributes.number1024;
        case 4096: return PropertyAttributes.number4096;
        case 8192: return PropertyAttributes.number8192;
        case 16384: return PropertyAttributes.number16384;
        case 32768: return PropertyAttributes.number32768;
        case 62464: return PropertyAttributes.number62464;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PropertyAttributesTypeTransformer] instance.
  static PropertyAttributesTypeTransformer? _instance;
}

