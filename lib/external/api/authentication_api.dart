//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthenticationApi {
  AuthenticationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /Authentication/GetRefreshToken' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RefreshTokenRequest] refreshTokenRequest:
  Future<Response> authenticationGetRefreshTokenGetWithHttpInfo({ RefreshTokenRequest? refreshTokenRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Authentication/GetRefreshToken';

    // ignore: prefer_final_locals
    Object? postBody = refreshTokenRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [RefreshTokenRequest] refreshTokenRequest:
  Future<AuthenticationResponse?> authenticationGetRefreshTokenGet({ RefreshTokenRequest? refreshTokenRequest, }) async {
    final response = await authenticationGetRefreshTokenGetWithHttpInfo( refreshTokenRequest: refreshTokenRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResponse',) as AuthenticationResponse;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /Authentication/SignIn' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SignInRequest] signInRequest:
  Future<Response> authenticationSignInPostWithHttpInfo({ SignInRequest? signInRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Authentication/SignIn';

    // ignore: prefer_final_locals
    Object? postBody = signInRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SignInRequest] signInRequest:
  Future<AuthenticationResponse?> authenticationSignInPost({ SignInRequest? signInRequest, }) async {
    final response = await authenticationSignInPostWithHttpInfo( signInRequest: signInRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResponse',) as AuthenticationResponse;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /Authentication/SignUp' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SignUpRequest] signUpRequest:
  Future<Response> authenticationSignUpPostWithHttpInfo({ SignUpRequest? signUpRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Authentication/SignUp';

    // ignore: prefer_final_locals
    Object? postBody = signUpRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SignUpRequest] signUpRequest:
  Future<AuthenticationResponse?> authenticationSignUpPost({ SignUpRequest? signUpRequest, }) async {
    final response = await authenticationSignUpPostWithHttpInfo( signUpRequest: signUpRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResponse',) as AuthenticationResponse;
    
    }
    return null;
  }
}
