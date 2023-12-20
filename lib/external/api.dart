//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/authentication_api.dart';
part 'api/profile_api.dart';
part 'api/utils_api.dart';

part 'model/assembly.dart';
part 'model/authentication_response.dart';
part 'model/bad_request_response.dart';
part 'model/calling_conventions.dart';
part 'model/constructor_info.dart';
part 'model/create_profile_request.dart';
part 'model/custom_attribute_data.dart';
part 'model/custom_attribute_named_argument.dart';
part 'model/custom_attribute_typed_argument.dart';
part 'model/error_response.dart';
part 'model/event_attributes.dart';
part 'model/event_info.dart';
part 'model/exception.dart';
part 'model/field_attributes.dart';
part 'model/field_info.dart';
part 'model/gender_identity_request.dart';
part 'model/gender_identity_response.dart';
part 'model/generic_parameter_attributes.dart';
part 'model/interest_request.dart';
part 'model/interest_response.dart';
part 'model/layout_kind.dart';
part 'model/member_info.dart';
part 'model/member_types.dart';
part 'model/method_attributes.dart';
part 'model/method_base.dart';
part 'model/method_impl_attributes.dart';
part 'model/method_info.dart';
part 'model/module.dart';
part 'model/module_handle.dart';
part 'model/occupation_request.dart';
part 'model/occupation_response.dart';
part 'model/ok.dart';
part 'model/parameter_attributes.dart';
part 'model/parameter_info.dart';
part 'model/profile_response.dart';
part 'model/property_attributes.dart';
part 'model/property_info.dart';
part 'model/refresh_token_request.dart';
part 'model/runtime_field_handle.dart';
part 'model/runtime_method_handle.dart';
part 'model/runtime_type_handle.dart';
part 'model/security_rule_set.dart';
part 'model/sign_in_request.dart';
part 'model/sign_up_request.dart';
part 'model/struct_layout_attribute.dart';
part 'model/type.dart';
part 'model/type_attributes.dart';
part 'model/type_info.dart';
part 'model/validation_result.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
