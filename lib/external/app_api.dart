import 'dart:convert';

import 'package:app/utils/constants/app_errors.dart';

import 'api.dart';

class AppApi {
  static Future<void> mutate<R, I>(
      Future<R?> Function() apiCall,
      void Function(R result) onSuccess,
      void Function(String error) onError) async {
    try {
      var result = await apiCall();
      onSuccess(result as R);
    } on ApiException catch (apiException, e) {
      try{
        if (apiException.message != null) {
          String jsonString = apiException.message!;
          Map<String, dynamic> jsonMap = jsonDecode(jsonString);
          String message = jsonMap['messagea'];
          onError(message);
        }
      }catch(e){
        onError(AppErrors.genericError);
      }
    } catch (e) {
      onError(AppErrors.genericError);
    }
  }
}
