//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FieldAttributes {
  /// Instantiate a new enum with the provided [value].
  const FieldAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = FieldAttributes._(0);
  static const number1 = FieldAttributes._(1);
  static const number2 = FieldAttributes._(2);
  static const number3 = FieldAttributes._(3);
  static const number4 = FieldAttributes._(4);
  static const number5 = FieldAttributes._(5);
  static const number6 = FieldAttributes._(6);
  static const number7 = FieldAttributes._(7);
  static const number16 = FieldAttributes._(16);
  static const number32 = FieldAttributes._(32);
  static const number64 = FieldAttributes._(64);
  static const number128 = FieldAttributes._(128);
  static const number256 = FieldAttributes._(256);
  static const number512 = FieldAttributes._(512);
  static const number1024 = FieldAttributes._(1024);
  static const number4096 = FieldAttributes._(4096);
  static const number8192 = FieldAttributes._(8192);
  static const number32768 = FieldAttributes._(32768);
  static const number38144 = FieldAttributes._(38144);

  /// List of all possible values in this [enum][FieldAttributes].
  static const values = <FieldAttributes>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number5,
    number6,
    number7,
    number16,
    number32,
    number64,
    number128,
    number256,
    number512,
    number1024,
    number4096,
    number8192,
    number32768,
    number38144,
  ];

  static FieldAttributes? fromJson(dynamic value) => FieldAttributesTypeTransformer().decode(value);

  static List<FieldAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FieldAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FieldAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FieldAttributes] to int,
/// and [decode] dynamic data back to [FieldAttributes].
class FieldAttributesTypeTransformer {
  factory FieldAttributesTypeTransformer() => _instance ??= const FieldAttributesTypeTransformer._();

  const FieldAttributesTypeTransformer._();

  int encode(FieldAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a FieldAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FieldAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return FieldAttributes.number0;
        case 1: return FieldAttributes.number1;
        case 2: return FieldAttributes.number2;
        case 3: return FieldAttributes.number3;
        case 4: return FieldAttributes.number4;
        case 5: return FieldAttributes.number5;
        case 6: return FieldAttributes.number6;
        case 7: return FieldAttributes.number7;
        case 16: return FieldAttributes.number16;
        case 32: return FieldAttributes.number32;
        case 64: return FieldAttributes.number64;
        case 128: return FieldAttributes.number128;
        case 256: return FieldAttributes.number256;
        case 512: return FieldAttributes.number512;
        case 1024: return FieldAttributes.number1024;
        case 4096: return FieldAttributes.number4096;
        case 8192: return FieldAttributes.number8192;
        case 32768: return FieldAttributes.number32768;
        case 38144: return FieldAttributes.number38144;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FieldAttributesTypeTransformer] instance.
  static FieldAttributesTypeTransformer? _instance;
}

