import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:developer' as developer;

import 'package:path/path.dart';

class ApiHelperDio {
  final String _baseUrlLiveGlobalDevices = dotenv.env['ALLOWED_ORIGIN_PUBLIC']!;
  final String _baseUrlWebLocal = dotenv.env['ALLOWED_ORIGIN_SAME_NETWORK']!;
  final String _baseUrlPhysicalDevice =
      dotenv.env['ALLOWED_ORIGIN_PHYSICAL_DEVICE']!;

  // API Headers
  final Map<String, String> _apiJSONHeaders = {
    dotenv.env['API_HEADER1']!: dotenv.env['API_KEY_VALUE1']!,
    dotenv.env['API_HEADER2']!: dotenv.env['API_KEY_VALUE2']!,
    dotenv.env['CONTENT_TYPE_KEY']!: dotenv.env['CONTENT_TYPE_VALUE_APP_JSON']!,
  };

  // API Headers
  // final Map<String, String> _apiFormDataHeaders = {
  //   dotenv.env['API_HEADER1']!: dotenv.env['API_KEY_VALUE1']!,
  //   dotenv.env['API_HEADER2']!: dotenv.env['API_KEY_VALUE2']!,
  //   dotenv.env['CONTENT_TYPE_KEY']!:
  //       dotenv.env['CONTENT_TYPE_VALUE_MULTI_P_FORM_DATA']!,
  // };

  // API body
  final String _authKey = dotenv.env['IV_KEY']!;
  final String _authValue = dotenv.env['IV_KEY_VALUE']!;

  final _dio = Dio();

  ApiHelperDio() {
    _dio.options.connectTimeout = Duration(
        minutes:
            1); // I considered this as a recommended properties because it improves UX when the API or server is down.
    _dio.options.receiveTimeout = Duration(
        minutes:
            1); // I prefer to set this as 10 seconds, but I'm worried about the others that has poor network connectivity.
  }

  Future<dynamic> manageCode(String endPoint, String? email, String? mobileNo,
      String? deviceID, String? code, String functionKey) async {
    final url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    final Map<String, dynamic> plainBodyRequest = {
      _authKey: _authValue,
      'email': email,
      'mobile_no': mobileNo,
      'device_id': deviceID,
      'code': code,
      'function_key': functionKey,
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: plainBodyRequest,
        options: Options(
          headers: _apiJSONHeaders,
          contentType:
              'application/json', // to handle dynamic type of value in key-value pair
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('Failed to manage code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }

  Future<dynamic> retrieveAdminProductsData(

      /// works with [retrieveProductKey] method that is processing a nested [List<DataModel>] inside a parent data model
      String endPoint,
      String prodID,
      String prodVarID,
      String prodCatName,
      String userModifier,
      String function) async {
    final url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    final Map<String, String> plainBodyRequest = {
      _authKey: _authValue,
      'prod_id': prodID,
      'prod_var_id': prodVarID,
      'prod_cat_name': prodCatName,
      'user_id_modifier': userModifier,
      'function_key': function,
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: plainBodyRequest,
        options: Options(
          headers: _apiJSONHeaders,
          contentType:
              'application/json', // to handle dynamic type of value in key-value pair
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final responseBody = jsonDecode(response.data);
        // // final List<dynamic> jsonResponse = response.data;
        // // Process the response data (if any)
        // return responseBody;
        // final List<dynamic> jsonResponse = response.data;

        // return jsonResponse.map((data) => data).toList();
        return response.data;
      } else {
        throw Exception(
            'Failed to retrieveAdminProductsData: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }

  Future<List> retrieveLss2CFrontID(String endPoint) async {
    //working for non-optimized images
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // final formData = FormData.fromMap({
    //   _authKey: _authValue,
    // }); // use only if you're passing data that is composed of plain and non-plain text

    try {
      final response = await _dio.post(
        url.toString(),
        data: {_authKey: _authValue},
        options: Options(
          responseType: ResponseType.json,
          headers: _apiJSONHeaders,
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Map jsonResponse = response.data;
        // return jsonResponse.entries.toList();
        final List<dynamic> jsonResponse = response.data;

        return jsonResponse.map((data) => data).toList();
      } else {
        throw Exception('Failed to retrieveLss2CFrontID');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }

  Future<dynamic> usernamePassSignIn({
    String endPoint = '/api/postget/sign_in',
    String? username,
    String? password,
    bool? isGoogleAccount,
  }) async {
    // does not handle null type response, it handle null string literals instead
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // Data to send (replace these values with your actual data)
    final Map<String, dynamic> requestData = {
      // should be used if no heavy files are being sent
      _authKey: _authValue,
      'comp_email': username,
      'password': password,
      'is_using_google': isGoogleAccount,
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: requestData,
        options: Options(
          headers: _apiJSONHeaders,
          contentType:
              'application/json', // to handle dynamic type of value in key-value pair
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('Failed to usernamePassSignIn: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }

  Future<dynamic> logAdminWebAccess({
    String endPoint = '/api/postget/log_web_access',
    String? adminID,
    String? username,
    String? fullName,
    String? compEmail,
    String? adminRole,
    String? loginStatus,
  }) async {
    // does not handle null type response, it handle null string literals instead
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // Data to send (replace these values with your actual data)
    final Map<String, dynamic> requestData = {
      // should be used if no heavy files are being sent
      _authKey: _authValue,
      'admin_id': adminID,
      'username': username,
      'full_name': fullName,
      'comp_email': compEmail,
      'admin_role': adminRole,
      'login_status': loginStatus,
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: requestData,
        options: Options(
          headers: _apiJSONHeaders,
          contentType:
              'application/json', // to handle dynamic type of value in key-value pair
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('Failed logAdminWebAccess: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }

  Future<dynamic> manageDeviceProperties(
      {String endPoint = '/api/postget/log_device_prop',
      String? adminID,
      String? devicePlatform,
      bool? deviceState,
      String? deviceModel,
      String? deviceVersion,
      String? functionKey}) async {
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // Data to send (replace these values with your actual data)
    final Map<String, dynamic> requestData = {
      _authKey: _authValue,
      'admin_id': adminID,
      'device_platform': devicePlatform,
      'device_state': deviceState,
      'device_model': deviceModel,
      'device_version': deviceVersion,
      'function_key': functionKey,
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: requestData,
        options: Options(
          headers: _apiJSONHeaders,
          contentType:
              'application/json', // to handle dynamic type of value in key-value pair
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception(
            'Failed to manageDeviceProperties: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }

  Future<dynamic> manageCode2(
      {String endPoint = '/api/postget/code/process_req',
      String? email,
      String? mobileNo,
      String? deviceID,
      String? code,
      String? functionKey}) async {
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // Data to send (replace these values with your actual data)
    final Map<String, dynamic> requestData = {
      _authKey: _authValue,
      'email': email,
      'mobile_no': mobileNo,
      'device_id': deviceID,
      'code': code,
      'function_key': functionKey,
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: requestData,
        options: Options(
          headers: _apiJSONHeaders,
          contentType:
              'application/json', // to handle dynamic type of value in key-value pair
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('Failed to manageCode2: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }

  Future<dynamic> processUserRequest2({
    // this is originally came from GlamGear mobile app source code, and should not be used in admin side
    String endPoint = '/api/postget/process_access_req',
    String? userId,
    String? deviceID,
    String? frontIdImg, // it should to be a File? in actual file transfer
    double? frontIdImgKBSize,
    String? backIdImg, // it should to be a File? in actual file transfer
    double? backIdImgKBSize,
    String? selfieImg, // it should to be a File? in actual file transfer
    double? selfieImgKBSize,
    String? givenName,
    String? middleName,
    String? familyName,
    String? suffix,
    String? gender,
    String? birthday,
    String? nationality,
    String? country,
    String? province,
    String? cityMun,
    String? brgy,
    String? unitHBldgSt,
    String? villSub,
    String? zipCode,
    String? sourceOfFund,
    String? empStatus,
    String? employer,
    String? occupation,
    String? emailAdd,
    String? mobileNo,
    String? password,
    String? functionKey,
  }) async {
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // Data to send (replace these values with your actual data)
    final Map<String, dynamic> requestData = {
      _authKey: _authValue,
      'user_id': userId,
      'device_id': deviceID,
      'front_id_img_data': frontIdImg,
      'front_id_img_f_kbsize': frontIdImgKBSize,
      'back_id_img_data': backIdImg,
      'back_id_img_f_kbsize': backIdImgKBSize,
      'selfie_img_data': selfieImg,
      'selfie_img_f_kbsize': selfieImgKBSize,
      'given_name': givenName,
      'middle_name': middleName,
      'family_name': familyName,
      'suffix': suffix,
      'gender': gender,
      'birthday': birthday,
      'nationality': nationality,
      'country': country,
      'province': province,
      'city_mun': cityMun,
      'brgy': brgy,
      'unit_h_bldg_st': unitHBldgSt,
      'vill_sub': villSub,
      'zip_code': zipCode,
      'source_of_fund': sourceOfFund,
      'emp_status': empStatus,
      'employer': employer,
      'occupation': occupation,
      'email_add': emailAdd,
      'mobile_no': mobileNo,
      'password': password,
      'function_key': functionKey
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: requestData,
        options: Options(
          headers: _apiJSONHeaders,
          contentType:
              'application/json', // to handle dynamic type of value in key-value pair, if no heavy file data is being sent
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception(
            'Failed to processUserRequest2: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        developer.log(e.response!.data);
        developer.log(e.response!.headers.toString());
        developer.log(e.response!.requestOptions.toString());
      } else if (e.type == DioExceptionType.connectionTimeout) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else if (e.type == DioExceptionType.unknown) {
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        developer.log(e.requestOptions.toString());
        developer.log(e.message.toString());
        throw Exception();
      }
      return [];
    }
  }
}
