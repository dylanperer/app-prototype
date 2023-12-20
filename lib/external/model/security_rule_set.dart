//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SecurityRuleSet {
  /// Instantiate a new enum with the provided [value].
  const SecurityRuleSet._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = SecurityRuleSet._(0);
  static const number1 = SecurityRuleSet._(1);
  static const number2 = SecurityRuleSet._(2);

  /// List of all possible values in this [enum][SecurityRuleSet].
  static const values = <SecurityRuleSet>[
    number0,
    number1,
    number2,
  ];

  static SecurityRuleSet? fromJson(dynamic value) => SecurityRuleSetTypeTransformer().decode(value);

  static List<SecurityRuleSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SecurityRuleSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SecurityRuleSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SecurityRuleSet] to int,
/// and [decode] dynamic data back to [SecurityRuleSet].
class SecurityRuleSetTypeTransformer {
  factory SecurityRuleSetTypeTransformer() => _instance ??= const SecurityRuleSetTypeTransformer._();

  const SecurityRuleSetTypeTransformer._();

  int encode(SecurityRuleSet data) => data.value;

  /// Decodes a [dynamic value][data] to a SecurityRuleSet.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SecurityRuleSet? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return SecurityRuleSet.number0;
        case 1: return SecurityRuleSet.number1;
        case 2: return SecurityRuleSet.number2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SecurityRuleSetTypeTransformer] instance.
  static SecurityRuleSetTypeTransformer? _instance;
}

