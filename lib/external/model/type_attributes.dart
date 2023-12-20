//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TypeAttributes {
  /// Instantiate a new enum with the provided [value].
  const TypeAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = TypeAttributes._(0);
  static const number1 = TypeAttributes._(1);
  static const number2 = TypeAttributes._(2);
  static const number3 = TypeAttributes._(3);
  static const number4 = TypeAttributes._(4);
  static const number5 = TypeAttributes._(5);
  static const number6 = TypeAttributes._(6);
  static const number7 = TypeAttributes._(7);
  static const number8 = TypeAttributes._(8);
  static const number16 = TypeAttributes._(16);
  static const number24 = TypeAttributes._(24);
  static const number32 = TypeAttributes._(32);
  static const number128 = TypeAttributes._(128);
  static const number256 = TypeAttributes._(256);
  static const number1024 = TypeAttributes._(1024);
  static const number2048 = TypeAttributes._(2048);
  static const number4096 = TypeAttributes._(4096);
  static const number8192 = TypeAttributes._(8192);
  static const number16384 = TypeAttributes._(16384);
  static const number65536 = TypeAttributes._(65536);
  static const number131072 = TypeAttributes._(131072);
  static const number196608 = TypeAttributes._(196608);
  static const number262144 = TypeAttributes._(262144);
  static const number264192 = TypeAttributes._(264192);
  static const number1048576 = TypeAttributes._(1048576);
  static const number12582912 = TypeAttributes._(12582912);

  /// List of all possible values in this [enum][TypeAttributes].
  static const values = <TypeAttributes>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number5,
    number6,
    number7,
    number8,
    number16,
    number24,
    number32,
    number128,
    number256,
    number1024,
    number2048,
    number4096,
    number8192,
    number16384,
    number65536,
    number131072,
    number196608,
    number262144,
    number264192,
    number1048576,
    number12582912,
  ];

  static TypeAttributes? fromJson(dynamic value) => TypeAttributesTypeTransformer().decode(value);

  static List<TypeAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TypeAttributes] to int,
/// and [decode] dynamic data back to [TypeAttributes].
class TypeAttributesTypeTransformer {
  factory TypeAttributesTypeTransformer() => _instance ??= const TypeAttributesTypeTransformer._();

  const TypeAttributesTypeTransformer._();

  int encode(TypeAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a TypeAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TypeAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return TypeAttributes.number0;
        case 1: return TypeAttributes.number1;
        case 2: return TypeAttributes.number2;
        case 3: return TypeAttributes.number3;
        case 4: return TypeAttributes.number4;
        case 5: return TypeAttributes.number5;
        case 6: return TypeAttributes.number6;
        case 7: return TypeAttributes.number7;
        case 8: return TypeAttributes.number8;
        case 16: return TypeAttributes.number16;
        case 24: return TypeAttributes.number24;
        case 32: return TypeAttributes.number32;
        case 128: return TypeAttributes.number128;
        case 256: return TypeAttributes.number256;
        case 1024: return TypeAttributes.number1024;
        case 2048: return TypeAttributes.number2048;
        case 4096: return TypeAttributes.number4096;
        case 8192: return TypeAttributes.number8192;
        case 16384: return TypeAttributes.number16384;
        case 65536: return TypeAttributes.number65536;
        case 131072: return TypeAttributes.number131072;
        case 196608: return TypeAttributes.number196608;
        case 262144: return TypeAttributes.number262144;
        case 264192: return TypeAttributes.number264192;
        case 1048576: return TypeAttributes.number1048576;
        case 12582912: return TypeAttributes.number12582912;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TypeAttributesTypeTransformer] instance.
  static TypeAttributesTypeTransformer? _instance;
}

