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
        seconds:
            5); // I considered this as a recommended properties because it improves UX when the API or server is down.
    _dio.options.receiveTimeout = Duration(
        minutes:
            1); // I prefer to set this as 10 seconds, but I'm worried about the others that has poor network connectivity.
  }

  // Future<dynamic> addProductData(
  //     String endPoint, ProductAdminData prodAdminData) async {
  //   final url = kDebugMode
  //       ? kIsWeb
  //           ? Uri.parse('$_baseUrlWebLocal$endPoint')
  //           : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
  //       : kIsWeb
  //           ? Uri.parse('$_baseUrlWebLocal$endPoint')
  //           : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

  //   List<MultipartFile> prodImageFiles;
  //   List<MultipartFile> prodVarImageFiles;

  //   // Prepare image files for multipart
  //   prodImageFiles = await Future.wait(
  //     prodAdminData.prodImg!.map((image) async {
  //       return MultipartFile.fromBytes(
  //         image.bytes!,
  //         filename: image.name,
  //       );
  //     }),
  //   );

  //   // Prepare image files for multipart
  //   prodVarImageFiles = await Future.wait(
  //     prodAdminData.prodVarImg!.map((image) async {
  //       return MultipartFile.fromBytes(
  //         image.bytes!,
  //         filename: image.name,
  //       );
  //     }),
  //   );

  //   final formData = FormData.fromMap({
  //     _authKey: _authValue,
  //     'prod_id': prodAdminData.prodId,
  //     'prod_name': prodAdminData.prodName,
  //     'orig_price': prodAdminData.origPrice,
  //     'disc_price': prodAdminData.discPrice,
  //     'value_added_tax': prodAdminData.valueAddedTax,
  //     'stock': prodAdminData.stock,
  //     'availability': prodAdminData.availability,
  //     'cat_id': prodAdminData.category,
  //     'user_id_modifier': prodAdminData.userIdModifier,
  //     'desc_data': prodAdminData.prodDescription,
  //     'prod_img': prodImageFiles,
  //     'prod_var_img': prodVarImageFiles,
  //   });

  //   try {
  //     final response = await _dio.post(
  //       url.toString(),
  //       data: formData,
  //       options: Options(
  //         headers: _apiJSONHeaders,
  //       ),
  //       onSendProgress: (int sent, int total) {
  //         developer.log('$sent $total');
  //       },
  //     );

  //     // Handle successful response (e.g., navigate, show success message)
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       final responseBody = jsonDecode(response.data);
  //       // Process the response data (if any)
  //       return responseBody;
  //     } else {
  //       throw Exception('Failed to add product: ${response.statusCode}');
  //     }
  //   } on DioException catch (e) {
  //     // The request was made and the server responded with a status code
  //     // that falls out of the range of 2xx and is also not 304.
  //     if (e.response != null) {
  //       developer.log(e.response!.data);
  //       developer.log(e.response!.headers.toString());
  //       developer.log(e.response!.requestOptions.toString());
  //     } else {
  //       // Something happened in setting up or sending the request that triggered an Error
  //       developer.log(e.requestOptions.toString());
  //       developer.log(e.message.toString());
  //     }
  //   }
  // }

  // void _addProductImg(String endPoint, ProductAdminData productData) async {
  //   final url = kDebugMode
  //       ? kIsWeb
  //           ? Uri.parse('$baseUrlWebLocal$endPoint')
  //           : Uri.parse('$baseUrlPhysicalDevice$endPoint')
  //       : kIsWeb
  //           ? Uri.parse('$baseUrlWebLocal$endPoint')
  //           : Uri.parse('$baseUrlLiveGlobalDevices$endPoint');

  //   try {
  //     final formData = FormData();

  //     // Add Authentication Key
  //     formData.fields.add(MapEntry(_authKey, _authValue));

  //     // Add Product Images
  //     if (productData.prodImg != null) {
  //       for (var image in productData.prodImg!) {
  //         formData.files.add(MapEntry(
  //           'prod_img',
  //           MultipartFile.fromBytes(image.img!, filename: 'product_img.png'),
  //         ));
  //       }
  //     }

  //     // Add Product Variant Images
  //     if (productData.prodVarImg != null) {
  //       for (var image in productData.prodVarImg!) {
  //         formData.files.add(MapEntry(
  //           'prod_var_img',
  //           MultipartFile.fromBytes(image.img!, filename: 'variant_img.png'),
  //         ));
  //       }
  //     }

  //     final response = await dio.post(
  //       url.toString(),
  //       data: formData,
  //       options: Options(
  //         headers: _apiHeaders,
  //       ),
  //       onSendProgress: (int sent, int total) {
  //         developer.log('$sent $total');
  //       },
  //     );

  //     // Handle successful response (e.g., navigate, show success message)
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       // Process the response data (if any)
  //       developer.log('Product added successfully');
  //     } else {
  //       throw Exception('Failed to add product: ${response.statusCode}');
  //     }
  //   } on DioException catch (e) {
  //     // The request was made and the server responded with a status code
  //     // that falls out of the range of 2xx and is also not 304.
  //     if (e.response != null) {
  //       developer.log(e.response!.data);
  //       developer.log(e.response!.headers.toString());
  //       developer.log(e.response!.requestOptions.toString());
  //     } else {
  //       // Something happened in setting up or sending the request that triggered an Error
  //       developer.log(e.requestOptions.toString());
  //       developer.log(e.message.toString());
  //     }
  //   }
  // }

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
      "email": email,
      "mobile_no": mobileNo,
      "device_id": deviceID,
      "code": code,
      "function_key": functionKey,
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
        throw Exception('Failed to add product: ${response.statusCode}');
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
        throw Exception('Failed to add product: ${response.statusCode}');
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

  Future<dynamic> manageClientSideData(

      /// works with [retrieveProductKey] method that is processing a nested [List<DataModel>] inside a parent data model
      String endPoint,
      String prodID,
      String prodVarID,
      String prodCatName,
      String userID,
      int quantity,
      String cartID,
      String? shippingAddID,
      String?
          recipientsName, // when using dynamic, and when you pass null, make sure that String or other type is nullable
      String? mobileNo,
      String? region,
      String? city,
      String? district,
      String? stBldg,
      String? unitFloor,
      String? addressCateg,
      bool? isDefault,
      bool? isSelected,
      String payRefCode,
      double amountToPay,
      String? batchID,
      int? orderTabIndex,
      String? cancellationReason,
      String function) async {
    final url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    final Map<String, dynamic> plainBodyRequest = {
      _authKey: _authValue,
      'prod_id': prodID,
      'prod_var_id': prodVarID,
      'prod_cat_name': prodCatName,
      'user_id': userID,
      'quantity': quantity,
      'cart_id': cartID,
      'shipping_add_id': shippingAddID,
      'recipients_name': recipientsName,
      'mobile_no': mobileNo,
      'region': region,
      'city': city,
      'district': district,
      'st_bldg': stBldg,
      'unit_floor': unitFloor,
      'address_category': addressCateg,
      'is_default': isDefault,
      'is_selected': isSelected,
      'pay_ref_no': payRefCode,
      'amount_to_pay': amountToPay,
      'batch_id': batchID,
      'm_order_tab': orderTabIndex,
      'cancellation_reason': cancellationReason,
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
        throw Exception('Failed to add product: ${response.statusCode}');
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

  Future<dynamic> manageAddressList(

      /// works with [retrieveProductKey] method that is processing a nested [List<DataModel>] inside a parent data model
      String endPoint,
      String type,
      String name) async {
    final url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    final Map<String, dynamic> plainBodyRequest = {
      _authKey: _authValue,
      'type': type,
      'name': name,
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
        throw Exception('Failed to add product: ${response.statusCode}');
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
        throw Exception('Failed to load data');
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

  Future<dynamic> kycPhilippineAddress(
      String endPoint, String type, String code) async {
    final url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    final Map<String, dynamic> plainBodyRequest = {
      _authKey: _authValue,
      "type": type,
      "code": code,
    };

    try {
      final response = await _dio.post(
        url.toString(),
        data: plainBodyRequest,
        options: Options(
          headers: _apiJSONHeaders,
        ),
      );

      // Handle successful response (e.g., navigate, show success message)
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('Failed to add product: ${response.statusCode}');
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

  Future<dynamic> manageKYCTempData(
    String endPoint,
    File? frontSID,
    double? frontSIDKB,
    bool? isBackIDRequired,
    File? backSID,
    double? backSIDKB,
    File? selfie,
    double? selfieKB,
    String? gvnName,
    String? mdlName,
    String? fmlyName,
    String? sfx,
    String? gender,
    String? bDate,
    String? ntnlty,
    String? cntry,
    String? prov,
    String? ctyMun,
    String? brgy,
    String? unitHnBStN,
    String? villSub,
    String? zipCode,
    String? srcOfFund,
    String? empStatus,
    String? emplyr,
    String? occptn,
    String userID,
    String functionKey,
    String subFunctionKey,
  ) async {
    final url = kDebugMode
        ? kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlPhysicalDevice$endPoint')
        : kIsWeb
            ? Uri.parse('$_baseUrlWebLocal$endPoint')
            : Uri.parse('$_baseUrlLiveGlobalDevices$endPoint');

    // // Attach the file
    // var fsIDfileStream = http.ByteStream(frontSID!.openRead());
    var fsIDfileLength = await frontSID?.length() ?? 0;
    // var bsIDfileStream = http.ByteStream(backSID.openRead());
    var bsIDfileLength = await backSID?.length() ?? 0;
    // var selfiefileStream = http.ByteStream(selfie.openRead());
    var selfiefileLength = await selfie?.length() ?? 0;

    // final Map<String, dynamic> plainBodyRequest = {
    //   _authKey: _authValue,
    //   if (frontSID != null)
    //     'f_side_id': await MultipartFile.fromFile(frontSID.path,
    //         filename: basename(frontSID.path)),
    //   'f_side_kbs': frontSIDKB ?? 0.00,
    //   // if (backSID != null)
    //   //   'b_side_id': await MultipartFile.fromFile(backSID.path,
    //   //       filename: basename(backSID.path)),
    //   // 'b_side_kbs': backSIDKB ?? 0.00,
    //   // if (selfie != null)
    //   //   'selfie': await MultipartFile.fromFile(selfie.path,
    //   //       filename: basename(selfie.path)),
    //   // 'selfie_kbs': selfieKB ?? 0.00,
    //   'function_key': functionKey,
    //   'sub_function_key': subFunctionKey,
    // };

    final fsIDFN = frontSID?.path.split(Platform.pathSeparator).last;
    final bsIDFN = backSID?.path.split(Platform.pathSeparator).last;
    final selfieFN = selfie?.path.split(Platform.pathSeparator).last;
    final format = DateFormat("MMMM d, y");

    final formData = FormData.fromMap({
      _authKey: _authValue,
      if (frontSID != null)
        'f_side_id': await MultipartFile.fromFile(frontSID.path,
            filename: basename(frontSID.path)),
      'f_side_kbs': frontSIDKB ?? 0.00,
      'fsid_fn': fsIDFN,
      'is_br': isBackIDRequired,
      if (backSID != null)
        'b_side_id': await MultipartFile.fromFile(backSID.path,
            filename: basename(backSID.path)),
      'b_side_kbs': backSIDKB ?? 0.00,
      'bsid_fn': bsIDFN,
      if (selfie != null)
        'selfie': await MultipartFile.fromFile(selfie.path,
            filename: basename(selfie.path)),
      'selfie_kbs': selfieKB ?? 0.00,
      'slf_fn': selfieFN,
      'gvn_n': gvnName,
      'mdl_n': mdlName,
      'fmly_n': fmlyName,
      'sfx': sfx,
      'gndr': gender,
      'bdate': (bDate != null)
          ? format.parse(bDate)
          : DateTime.now().toIso8601String(),
      'ntnlty': ntnlty,
      'cntry': cntry,
      'prov': prov,
      'cty_mun': ctyMun,
      'brgy': brgy,
      'unt_h_bldg_st': unitHnBStN,
      'vill_sub': villSub,
      'zip_code': zipCode,
      'src_of_fund': srcOfFund,
      'emp_status': empStatus,
      'emp': emplyr,
      'occ': occptn,
      'user_id': userID,
      'function_key': functionKey,
      'sub_function_key': subFunctionKey,
    });

    try {
      final response = await _dio.post(
        url.toString(),
        data: formData,
        options: Options(
          headers: _apiJSONHeaders,
          contentType: 'multipart/form-data',
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
        throw Exception('Failed to add product: ${response.statusCode}');
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
