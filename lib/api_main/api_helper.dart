import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;

import 'package:path/path.dart';

class ApiHelper {
  // reference purposes only, should not be used in development or even in production
  final String _baseUrlLiveGlobalDevices = dotenv.env['ALLOWED_ORIGIN_PUBLIC']!;
  final String _baseUrlWebLocal = dotenv.env['ALLOWED_ORIGIN_SAME_NETWORK']!;
  final String _baseUrlPhysicalDevice =
      dotenv.env['ALLOWED_ORIGIN_PHYSICAL_DEVICE']!;
  // kDebugMode
  //     ? dotenv.env['ALLOWED_ORIGIN7']!
  //     : dotenv.env['ALLOWED_ORIGIN_PUBLIC']!;

  // API Headers
  final Map<String, String> _apiHeaders = {
    dotenv.env['API_HEADER1']!: dotenv.env['API_KEY_VALUE1']!,
    dotenv.env['API_HEADER2']!: dotenv.env['API_KEY_VALUE2']!,
    dotenv.env['CONTENT_TYPE_KEY']!: dotenv.env['CONTENT_TYPE_VALUE_APP_JSON']!,
  };

  // API Headers
  final Map<String, String> _apiHeaders2 = {
    dotenv.env['API_HEADER1']!: dotenv.env['API_KEY_VALUE1']!,
    dotenv.env['API_HEADER2']!: dotenv.env['API_KEY_VALUE2']!,
    dotenv.env['CONTENT_TYPE_KEY']!:
        dotenv.env['CONTENT_TYPE_VALUE_MULTI_P_FORM_DATA']!,
  };

  // API body
  final String _authKey = dotenv.env['IV_KEY']!;
  final String _authValue = dotenv.env['IV_KEY_VALUE']!;

  // Helper function to process the response
  dynamic _processResponse(http.Response response) {
    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return responseBody;
    } else {
      // Handle API errors
      throw Exception(
          'API Error: ${response.statusCode} ${responseBody.toString()}');
    }
  }

  Future<List<dynamic>> postPhilippineAddress(
      // I prefer not to use this, please see api_helper_dio instead
      String endPoint,
      String entry) async {
    final url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint/$entry')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint/$entry')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint/$entry')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint/$entry');

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue}),
      );

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<dynamic> uploadFrontID(
      String endPoint, File file, double imgSize) async {
    final Uri url = Uri.parse('$_baseUrlPhysicalDevice$endPoint/$imgSize');

    // Create a multipart request
    var request = http.MultipartRequest('POST', url);

    // Set headers
    request.headers.addAll(_apiHeaders2); // Add all the headers

    // // Attach the file
    var fileStream = http.ByteStream(file.openRead());
    var fileLength = await file.length();

    developer.log('File value: ${file.path.split('/').last}');

    request.files.add(http.MultipartFile(
      'file', // The field name your backend expects for the file
      fileStream,
      fileLength,
      filename: basename(file
          .path), //file.path.split('/').last, // Extract file name from the path
    ));

    // Attach the file
    // var multipartFile = await http.MultipartFile.fromPath(
    //   'file', // The field name your backend expects for the file
    //   file.path,
    //   filename: basename(file.path), // Extract file name from the path
    // );
    // request.files.add(multipartFile);

    // Add 'iv' to the body (this is what your API expects)
    request.fields[_authKey] =
        _authValue; //(i.e request.fields['iv'] = 'iv_value';)

    try {
      // Send the request and get the response
      var streamedResponse = await request.send();

      // Convert the StreamedResponse into a http.Response
      var response = await http.Response.fromStream(streamedResponse);

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<dynamic> uploadTestImg(
      String endPoint, File file, double imgSize) async {
    final Uri url = Uri.parse('$_baseUrlWebLocal$endPoint/$imgSize');

    // Create a multipart request
    var request = http.MultipartRequest('POST', url);

    // Set headers
    request.headers.addAll(_apiHeaders); // Add all the headers

    // // Attach the file
    var fileStream = http.ByteStream(file.openRead());
    var fileLength = await file.length();

    developer.log('File value: ${file.path.split('/').last}');

    request.files.add(http.MultipartFile(
      'file', // The field name your backend expects for the file
      fileStream,
      fileLength,
      filename: basename(file
          .path), //file.path.split('/').last, // Extract file name from the path
    ));

    // Attach the file
    // var multipartFile = await http.MultipartFile.fromPath(
    //   'file', // The field name your backend expects for the file
    //   file.path,
    //   filename: basename(file.path), // Extract file name from the path
    // );
    // request.files.add(multipartFile);

    // Add 'iv' to the body (this is what your API expects)
    request.fields[_authKey] =
        _authValue; //(i.e request.fields['iv'] = 'iv_value';)

    try {
      // Send the request and get the response
      var streamedResponse = await request.send();

      // Convert the StreamedResponse into a http.Response
      var response = await http.Response.fromStream(streamedResponse);

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<List> retrieveFrontID(String endPoint) async {
    //working for non-optimized images
    final Uri url = Uri.parse('$_baseUrlPhysicalDevice$endPoint');

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue}),
      );

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        return jsonResponse.map((data) => data).toList();
        // return _processResponse(response);
      } else {
        throw Exception('Failed to load data');
        // return []; // Return an empty list in case of error
      }
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
      // return []; // Return an empty list in case of error
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

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue}),
      );

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        return jsonResponse
            .map((data) => data)
            .toList(); // different set of data
        // return _processResponse(response);
      } else {
        throw Exception('Failed to load data');
        // return []; // Return an empty list in case of error
      }
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
      // return []; // Return an empty list in case of error
    }
  }

  Future<dynamic> saveContent(String endPoint, File file) async {
    // not recommended as I decided to use a plain-text data - JSON format
    final Uri url = Uri.parse('$_baseUrlPhysicalDevice$endPoint');

    // Create a multipart request
    var request = http.MultipartRequest('POST', url);

    // Set headers
    request.headers.addAll(_apiHeaders2); // Add all the headers

    // // Attach the file
    var fileStream = http.ByteStream(file.openRead());
    var fileLength = await file.length();

    developer.log('File value: ${file.path.split('/').last}');

    request.files.add(http.MultipartFile(
      'file', // The field name your backend expects for the file
      fileStream,
      fileLength,
      filename: basename(file.path),
    ));
    request.fields[_authKey] = _authValue;

    try {
      // Send the request and get the response
      var streamedResponse = await request.send();

      // Convert the StreamedResponse into a http.Response
      var response = await http.Response.fromStream(streamedResponse);

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<dynamic> manageCode(String endPoint, String? email, String? mobileNo,
      String? deviceID, String? code, String functionKey) async {
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse(
                '$_baseUrlWebLocal$endPoint/$email/$mobileNo/$deviceID/$code/$functionKey')
            : Uri.parse(
                '$_baseUrlPhysicalDevice$endPoint/$email/$mobileNo/$deviceID/$code/$functionKey')
        : kIsWeb
            ? Uri.parse(
                '$_baseUrlWebLocal$endPoint/$email/$mobileNo/$deviceID/$code/$functionKey')
            : Uri.parse(
                '$_baseUrlLiveGlobalDevices$endPoint/$email/$mobileNo/$deviceID/$code/$functionKey');

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue}),
      );

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<dynamic> manageCode2(String endPoint, String? email, String? mobileNo,
      String? deviceID, String? code, String functionKey) async {
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // Data to send (replace these values with your actual data)
    final Map<String, dynamic> requestData = {
      "email": email,
      "mobile_no": mobileNo,
      "device_id": deviceID,
      "code": code,
      "function_key": functionKey,
    };

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue, ...requestData}),
      );

      developer.log(response.body);
      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<dynamic> processUserRequest(
    String? endPoint,
    String? userId,
    String? deviceID,
    String? frontIdImg, // it should to be a File?
    double? frontIdImgKBSize,
    String? backIdImg, // it should to be a File?
    double? backIdImgKBSize,
    String? selfieImg, // it should to be a File?
    double? selfieImgKBSize,
    String? givenName,
    String? middleName,
    String? familyName,
    String? suffix,
    String? gender,
    DateTime? birthday,
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
  ) async {
    // does not handle null type response, it handle null string literals instead
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse(
                '$_baseUrlWebLocal$endPoint/$userId/$deviceID/$frontIdImg'
                '/$frontIdImgKBSize/$backIdImg/$backIdImgKBSize/$selfieImg'
                '/$selfieImgKBSize/$givenName/$middleName/$familyName/$suffix'
                '/$gender/$birthday/$nationality/$country/$province/$cityMun/$brgy'
                '/$unitHBldgSt/$villSub/$zipCode/$sourceOfFund/$empStatus/$employer'
                '/$occupation/$emailAdd/$mobileNo/$password/$functionKey')
            : Uri.parse(
                '$_baseUrlPhysicalDevice$endPoint/$userId/$deviceID/$frontIdImg'
                '/$frontIdImgKBSize/$backIdImg/$backIdImgKBSize/$selfieImg'
                '/$selfieImgKBSize/$givenName/$middleName/$familyName/$suffix'
                '/$gender/$birthday/$nationality/$country/$province/$cityMun/$brgy'
                '/$unitHBldgSt/$villSub/$zipCode/$sourceOfFund/$empStatus/$employer'
                '/$occupation/$emailAdd/$mobileNo/$password/$functionKey')
        : kIsWeb
            ? Uri.parse(
                '$_baseUrlWebLocal$endPoint/$userId/$deviceID/$frontIdImg'
                '/$frontIdImgKBSize/$backIdImg/$backIdImgKBSize/$selfieImg'
                '/$selfieImgKBSize/$givenName/$middleName/$familyName/$suffix'
                '/$gender/$birthday/$nationality/$country/$province/$cityMun/$brgy'
                '/$unitHBldgSt/$villSub/$zipCode/$sourceOfFund/$empStatus/$employer'
                '/$occupation/$emailAdd/$mobileNo/$password/$functionKey')
            : Uri.parse(
                '$_baseUrlLiveGlobalDevices$endPoint/$userId/$deviceID/$frontIdImg'
                '/$frontIdImgKBSize/$backIdImg/$backIdImgKBSize/$selfieImg'
                '/$selfieImgKBSize/$givenName/$middleName/$familyName/$suffix'
                '/$gender/$birthday/$nationality/$country/$province/$cityMun/$brgy'
                '/$unitHBldgSt/$villSub/$zipCode/$sourceOfFund/$empStatus/$employer'
                '/$occupation/$emailAdd/$mobileNo/$password/$functionKey');

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue}),
      );

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<dynamic> processUserRequest2(
    String? endPoint,
    String? userId,
    String? deviceID,
    String? frontIdImg, // it should to be a File?
    double? frontIdImgKBSize,
    String? backIdImg, // it should to be a File?
    double? backIdImgKBSize,
    String? selfieImg, // it should to be a File?
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
  ) async {
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
      "user_id": userId,
      "device_id": deviceID,
      "front_id_img_data": frontIdImg,
      "front_id_img_f_kbsize": frontIdImgKBSize,
      "back_id_img_data": backIdImg,
      "back_id_img_f_kbsize": backIdImgKBSize,
      "selfie_img_data": selfieImg,
      "selfie_img_f_kbsize": selfieImgKBSize,
      "given_name": givenName,
      "middle_name": middleName,
      "family_name": familyName,
      "suffix": suffix,
      "gender": gender,
      "birthday": birthday,
      "nationality": nationality,
      "country": country,
      "province": province,
      "city_mun": cityMun,
      "brgy": brgy,
      "unit_h_bldg_st": unitHBldgSt,
      "vill_sub": villSub,
      "zip_code": zipCode,
      "source_of_fund": sourceOfFund,
      "emp_status": empStatus,
      "employer": employer,
      "occupation": occupation,
      "email_add": emailAdd,
      "mobile_no": mobileNo,
      "password": password,
      "function_key": functionKey
    };
    developer.log('$birthday');

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue, ...requestData}),
      );

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }

  Future<dynamic> manageDeviceProperties(
      String endPoint,
      String? userID,
      String? devicePlatform,
      bool? deviceState,
      String? deviceModel,
      String? deviceVersion,
      String functionKey) async {
    final Uri url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // Data to send (replace these values with your actual data)
    final Map<String, dynamic> requestData = {
      "user_id": userID,
      "device_platform": devicePlatform,
      "device_state": deviceState,
      "device_model": deviceModel,
      "device_version": deviceVersion,
      "function_key": functionKey,
    };

    try {
      final response = await http.post(
        url,
        headers: _apiHeaders,
        body: json.encode({_authKey: _authValue, ...requestData}),
      );

      return _processResponse(response);
    } catch (error) {
      throw Exception('Failed to make POST request: $error');
    }
  }
}
