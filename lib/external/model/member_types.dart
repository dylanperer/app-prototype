//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MemberTypes {
  /// Instantiate a new enum with the provided [value].
  const MemberTypes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = MemberTypes._(1);
  static const number2 = MemberTypes._(2);
  static const number4 = MemberTypes._(4);
  static const number8 = MemberTypes._(8);
  static const number16 = MemberTypes._(16);
  static const number32 = MemberTypes._(32);
  static const number64 = MemberTypes._(64);
  static const number128 = MemberTypes._(128);
  static const number191 = MemberTypes._(191);

  /// List of all possible values in this [enum][MemberTypes].
  static const values = <MemberTypes>[
    number1,
    number2,
    number4,
    number8,
    number16,
    number32,
    number64,
    number128,
    number191,
  ];

  static MemberTypes? fromJson(dynamic value) => MemberTypesTypeTransformer().decode(value);

  static List<MemberTypes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MemberTypes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemberTypes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MemberTypes] to int,
/// and [decode] dynamic data back to [MemberTypes].
class MemberTypesTypeTransformer {
  factory MemberTypesTypeTransformer() => _instance ??= const MemberTypesTypeTransformer._();

  const MemberTypesTypeTransformer._();

  int encode(MemberTypes data) => data.value;

  /// Decodes a [dynamic value][data] to a MemberTypes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MemberTypes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return MemberTypes.number1;
        case 2: return MemberTypes.number2;
        case 4: return MemberTypes.number4;
        case 8: return MemberTypes.number8;
        case 16: return MemberTypes.number16;
        case 32: return MemberTypes.number32;
        case 64: return MemberTypes.number64;
        case 128: return MemberTypes.number128;
        case 191: return MemberTypes.number191;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MemberTypesTypeTransformer] instance.
  static MemberTypesTypeTransformer? _instance;
}

