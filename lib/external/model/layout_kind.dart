//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LayoutKind {
  /// Instantiate a new enum with the provided [value].
  const LayoutKind._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = LayoutKind._(0);
  static const number2 = LayoutKind._(2);
  static const number3 = LayoutKind._(3);

  /// List of all possible values in this [enum][LayoutKind].
  static const values = <LayoutKind>[
    number0,
    number2,
    number3,
  ];

  static LayoutKind? fromJson(dynamic value) => LayoutKindTypeTransformer().decode(value);

  static List<LayoutKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LayoutKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LayoutKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LayoutKind] to int,
/// and [decode] dynamic data back to [LayoutKind].
class LayoutKindTypeTransformer {
  factory LayoutKindTypeTransformer() => _instance ??= const LayoutKindTypeTransformer._();

  const LayoutKindTypeTransformer._();

  int encode(LayoutKind data) => data.value;

  /// Decodes a [dynamic value][data] to a LayoutKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LayoutKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return LayoutKind.number0;
        case 2: return LayoutKind.number2;
        case 3: return LayoutKind.number3;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LayoutKindTypeTransformer] instance.
  static LayoutKindTypeTransformer? _instance;
}

