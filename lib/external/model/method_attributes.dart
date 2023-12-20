//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MethodAttributes {
  /// Instantiate a new enum with the provided [value].
  const MethodAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = MethodAttributes._(0);
  static const number1 = MethodAttributes._(1);
  static const number2 = MethodAttributes._(2);
  static const number3 = MethodAttributes._(3);
  static const number4 = MethodAttributes._(4);
  static const number5 = MethodAttributes._(5);
  static const number6 = MethodAttributes._(6);
  static const number7 = MethodAttributes._(7);
  static const number8 = MethodAttributes._(8);
  static const number16 = MethodAttributes._(16);
  static const number32 = MethodAttributes._(32);
  static const number64 = MethodAttributes._(64);
  static const number128 = MethodAttributes._(128);
  static const number256 = MethodAttributes._(256);
  static const number512 = MethodAttributes._(512);
  static const number1024 = MethodAttributes._(1024);
  static const number2048 = MethodAttributes._(2048);
  static const number4096 = MethodAttributes._(4096);
  static const number8192 = MethodAttributes._(8192);
  static const number16384 = MethodAttributes._(16384);
  static const number32768 = MethodAttributes._(32768);
  static const number53248 = MethodAttributes._(53248);

  /// List of all possible values in this [enum][MethodAttributes].
  static const values = <MethodAttributes>[
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
    number32,
    number64,
    number128,
    number256,
    number512,
    number1024,
    number2048,
    number4096,
    number8192,
    number16384,
    number32768,
    number53248,
  ];

  static MethodAttributes? fromJson(dynamic value) => MethodAttributesTypeTransformer().decode(value);

  static List<MethodAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MethodAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MethodAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MethodAttributes] to int,
/// and [decode] dynamic data back to [MethodAttributes].
class MethodAttributesTypeTransformer {
  factory MethodAttributesTypeTransformer() => _instance ??= const MethodAttributesTypeTransformer._();

  const MethodAttributesTypeTransformer._();

  int encode(MethodAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a MethodAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MethodAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return MethodAttributes.number0;
        case 1: return MethodAttributes.number1;
        case 2: return MethodAttributes.number2;
        case 3: return MethodAttributes.number3;
        case 4: return MethodAttributes.number4;
        case 5: return MethodAttributes.number5;
        case 6: return MethodAttributes.number6;
        case 7: return MethodAttributes.number7;
        case 8: return MethodAttributes.number8;
        case 16: return MethodAttributes.number16;
        case 32: return MethodAttributes.number32;
        case 64: return MethodAttributes.number64;
        case 128: return MethodAttributes.number128;
        case 256: return MethodAttributes.number256;
        case 512: return MethodAttributes.number512;
        case 1024: return MethodAttributes.number1024;
        case 2048: return MethodAttributes.number2048;
        case 4096: return MethodAttributes.number4096;
        case 8192: return MethodAttributes.number8192;
        case 16384: return MethodAttributes.number16384;
        case 32768: return MethodAttributes.number32768;
        case 53248: return MethodAttributes.number53248;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MethodAttributesTypeTransformer] instance.
  static MethodAttributesTypeTransformer? _instance;
}

