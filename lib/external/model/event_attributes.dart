//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EventAttributes {
  /// Instantiate a new enum with the provided [value].
  const EventAttributes._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = EventAttributes._(0);
  static const number512 = EventAttributes._(512);
  static const number1024 = EventAttributes._(1024);

  /// List of all possible values in this [enum][EventAttributes].
  static const values = <EventAttributes>[
    number0,
    number512,
    number1024,
  ];

  static EventAttributes? fromJson(dynamic value) => EventAttributesTypeTransformer().decode(value);

  static List<EventAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventAttributes] to int,
/// and [decode] dynamic data back to [EventAttributes].
class EventAttributesTypeTransformer {
  factory EventAttributesTypeTransformer() => _instance ??= const EventAttributesTypeTransformer._();

  const EventAttributesTypeTransformer._();

  int encode(EventAttributes data) => data.value;

  /// Decodes a [dynamic value][data] to a EventAttributes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventAttributes? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return EventAttributes.number0;
        case 512: return EventAttributes.number512;
        case 1024: return EventAttributes.number1024;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventAttributesTypeTransformer] instance.
  static EventAttributesTypeTransformer? _instance;
}

