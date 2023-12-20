//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ParameterAttributes {
  /// Instantiate a new enum with the provided [value].
  const ParameterAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = ParameterAttributes._(0);
  static const number1 = ParameterAttributes._(1);
  static const number2 = ParameterAttributes._(2);
  static const number4 = ParameterAttributes._(4);
  static const number8 = ParameterAttributes._(8);
  static const number16 = ParameterAttributes._(16);
  static const number4096 = ParameterAttributes._(4096);
  static const number8192 = ParameterAttributes._(8192);
  static const number16384 = ParameterAttributes._(16384);
  static const number32768 = ParameterAttributes._(32768);
  static const number61440 = ParameterAttributes._(61440);

  /// List of all possible values in this [enum][ParameterAttributes].
  static const values = <ParameterAttributes>[
    number0,
    number1,
    number2,
    number4,
    number8,
    number16,
    number4096,
    number8192,
    number16384,
    number32768,
    number61440,
  ];

  static ParameterAttributes? fromJson(dynamic value) => ParameterAttributesTypeTransformer().decode(value);

  static List<ParameterAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParameterAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParameterAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ParameterAttributes] to int,
/// and [decode] dynamic data back to [ParameterAttributes].
class ParameterAttributesTypeTransformer {
  factory ParameterAttributesTypeTransformer() => _instance ??= const ParameterAttributesTypeTransformer._();

  const ParameterAttributesTypeTransformer._();

  int encode(ParameterAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a ParameterAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ParameterAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return ParameterAttributes.number0;
        case 1: return ParameterAttributes.number1;
        case 2: return ParameterAttributes.number2;
        case 4: return ParameterAttributes.number4;
        case 8: return ParameterAttributes.number8;
        case 16: return ParameterAttributes.number16;
        case 4096: return ParameterAttributes.number4096;
        case 8192: return ParameterAttributes.number8192;
        case 16384: return ParameterAttributes.number16384;
        case 32768: return ParameterAttributes.number32768;
        case 61440: return ParameterAttributes.number61440;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ParameterAttributesTypeTransformer] instance.
  static ParameterAttributesTypeTransformer? _instance;
}

