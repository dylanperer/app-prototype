//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MethodImplAttributes {
  /// Instantiate a new enum with the provided [value].
  const MethodImplAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = MethodImplAttributes._(0);
  static const number1 = MethodImplAttributes._(1);
  static const number2 = MethodImplAttributes._(2);
  static const number3 = MethodImplAttributes._(3);
  static const number4 = MethodImplAttributes._(4);
  static const number8 = MethodImplAttributes._(8);
  static const number16 = MethodImplAttributes._(16);
  static const number32 = MethodImplAttributes._(32);
  static const number64 = MethodImplAttributes._(64);
  static const number128 = MethodImplAttributes._(128);
  static const number256 = MethodImplAttributes._(256);
  static const number512 = MethodImplAttributes._(512);
  static const number4096 = MethodImplAttributes._(4096);
  static const number65535 = MethodImplAttributes._(65535);

  /// List of all possible values in this [enum][MethodImplAttributes].
  static const values = <MethodImplAttributes>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number8,
    number16,
    number32,
    number64,
    number128,
    number256,
    number512,
    number4096,
    number65535,
  ];

  static MethodImplAttributes? fromJson(dynamic value) => MethodImplAttributesTypeTransformer().decode(value);

  static List<MethodImplAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MethodImplAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MethodImplAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MethodImplAttributes] to int,
/// and [decode] dynamic data back to [MethodImplAttributes].
class MethodImplAttributesTypeTransformer {
  factory MethodImplAttributesTypeTransformer() => _instance ??= const MethodImplAttributesTypeTransformer._();

  const MethodImplAttributesTypeTransformer._();

  int encode(MethodImplAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a MethodImplAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MethodImplAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return MethodImplAttributes.number0;
        case 1: return MethodImplAttributes.number1;
        case 2: return MethodImplAttributes.number2;
        case 3: return MethodImplAttributes.number3;
        case 4: return MethodImplAttributes.number4;
        case 8: return MethodImplAttributes.number8;
        case 16: return MethodImplAttributes.number16;
        case 32: return MethodImplAttributes.number32;
        case 64: return MethodImplAttributes.number64;
        case 128: return MethodImplAttributes.number128;
        case 256: return MethodImplAttributes.number256;
        case 512: return MethodImplAttributes.number512;
        case 4096: return MethodImplAttributes.number4096;
        case 65535: return MethodImplAttributes.number65535;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MethodImplAttributesTypeTransformer] instance.
  static MethodImplAttributesTypeTransformer? _instance;
}

