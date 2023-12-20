//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CallingConventions {
  /// Instantiate a new enum with the provided [value].
  const CallingConventions._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = CallingConventions._(1);
  static const number2 = CallingConventions._(2);
  static const number3 = CallingConventions._(3);
  static const number32 = CallingConventions._(32);
  static const number64 = CallingConventions._(64);

  /// List of all possible values in this [enum][CallingConventions].
  static const values = <CallingConventions>[
    number1,
    number2,
    number3,
    number32,
    number64,
  ];

  static CallingConventions? fromJson(dynamic value) => CallingConventionsTypeTransformer().decode(value);

  static List<CallingConventions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CallingConventions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallingConventions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CallingConventions] to int,
/// and [decode] dynamic data back to [CallingConventions].
class CallingConventionsTypeTransformer {
  factory CallingConventionsTypeTransformer() => _instance ??= const CallingConventionsTypeTransformer._();

  const CallingConventionsTypeTransformer._();

  int encode(CallingConventions data) => data.value;

  /// Decodes a [dynamic value][data] to a CallingConventions.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CallingConventions? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return CallingConventions.number1;
        case 2: return CallingConventions.number2;
        case 3: return CallingConventions.number3;
        case 32: return CallingConventions.number32;
        case 64: return CallingConventions.number64;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CallingConventionsTypeTransformer] instance.
  static CallingConventionsTypeTransformer? _instance;
}

