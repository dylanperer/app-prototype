//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GenericParameterAttributes {
  /// Instantiate a new enum with the provided [value].
  const GenericParameterAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = GenericParameterAttributes._(0);
  static const number1 = GenericParameterAttributes._(1);
  static const number2 = GenericParameterAttributes._(2);
  static const number3 = GenericParameterAttributes._(3);
  static const number4 = GenericParameterAttributes._(4);
  static const number8 = GenericParameterAttributes._(8);
  static const number16 = GenericParameterAttributes._(16);
  static const number28 = GenericParameterAttributes._(28);

  /// List of all possible values in this [enum][GenericParameterAttributes].
  static const values = <GenericParameterAttributes>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number8,
    number16,
    number28,
  ];

  static GenericParameterAttributes? fromJson(dynamic value) => GenericParameterAttributesTypeTransformer().decode(value);

  static List<GenericParameterAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenericParameterAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenericParameterAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenericParameterAttributes] to int,
/// and [decode] dynamic data back to [GenericParameterAttributes].
class GenericParameterAttributesTypeTransformer {
  factory GenericParameterAttributesTypeTransformer() => _instance ??= const GenericParameterAttributesTypeTransformer._();

  const GenericParameterAttributesTypeTransformer._();

  int encode(GenericParameterAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a GenericParameterAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenericParameterAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return GenericParameterAttributes.number0;
        case 1: return GenericParameterAttributes.number1;
        case 2: return GenericParameterAttributes.number2;
        case 3: return GenericParameterAttributes.number3;
        case 4: return GenericParameterAttributes.number4;
        case 8: return GenericParameterAttributes.number8;
        case 16: return GenericParameterAttributes.number16;
        case 28: return GenericParameterAttributes.number28;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenericParameterAttributesTypeTransformer] instance.
  static GenericParameterAttributesTypeTransformer? _instance;
}

