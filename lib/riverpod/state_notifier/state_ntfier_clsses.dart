import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/api_main/api_helper_dio.dart';
import 'package:glamgear/internal/data_model/freezed/admin_data.dart';
import 'package:glamgear/internal/data_model/freezed/image_data.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_admin_data.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_client_data.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'dart:developer' as developer;

/* START OF MAIN CLASSES OF STATE NOTIFIER */

final _dioHelper = ApiHelperDio();

class DashboardBottomAppBarIndexNotifier extends StateNotifier<int> {
  DashboardBottomAppBarIndexNotifier() : super(0);

  // Method to set initial data from the parent class
  void setIndex({int index = 0}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = index;
  }
}

class ButtonStateNotifier extends StateNotifier<bool> {
  ButtonStateNotifier() : super(true);

  // Method to set initial data from the parent class
  void isButtonEnabled({bool isEnabled = true}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = isEnabled;
  }
}

class RegStateNotifier extends StateNotifier<bool> {
  RegStateNotifier() : super(true);

  // Method to set initial data from the parent class
  void switchState({bool currentState = true}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = currentState;
  }
}

class AccessCodeRequestNotifier extends StateNotifier<AsyncValue<String>> {
  AccessCodeRequestNotifier() : super(const AsyncValue.data(''));

  Future<void> initCodeRequest(String endPoint, String? email, String? mobileNo,
      String? deviceID, String? code, String functionKey) async {
    try {
      state =
          const AsyncValue.loading(); // to properly simulate loading process
      final response = await _dioHelper.manageCode(
          endPoint, email, mobileNo, deviceID, code, functionKey);

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(response);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class MyOrdersTabBarIndexNotifier extends StateNotifier<int> {
  MyOrdersTabBarIndexNotifier() : super(0);

  // Method to set initial data from the parent class
  void setIndex({int index = 0}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = index;
  }
}

class SignInUsingUNPasswordNotifier
    extends StateNotifier<AsyncValue<AdminData>> {
  SignInUsingUNPasswordNotifier() : super(const AsyncValue.loading());

  Future<void> signInUsingUNPassword(
      {String? username,
      String? password,
      bool isGoogleAccount = false}) async {
    try {
      state = AsyncValue.loading();
      final response = await _dioHelper.usernamePassSignIn(
          username: username,
          password: password,
          isGoogleAccount: isGoogleAccount);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final AdminData jsonListData = responseListData
            .map((data) => AdminData.fromJson(data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(AdminData());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class LogAdminWebAccessNotifier extends StateNotifier<AsyncValue<dynamic>> {
  LogAdminWebAccessNotifier() : super(const AsyncValue.loading());

  Future<void> manageAdminWebAccess({
    String? adminID,
    String? username,
    String? fullName,
    String? compEmail,
    String? adminRole,
    String? loginStatus,
  }) async {
    try {
      final response = await _dioHelper.logAdminWebAccess(
          adminID: adminID,
          username: username,
          fullName: fullName,
          compEmail: compEmail,
          adminRole: adminRole,
          loginStatus: loginStatus);

      if (response != null && response.runtimeType == List<dynamic>) {
        // if came from tabular data
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final jsonListData = responseListData
            .map((data) => (data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else if (response != null && response == "SUCCESSFUL") {
        // if came from single data
        state = AsyncValue.data('SUCCESSFUL'); // it shouldn't be null
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(
            'Something went wrong. Please try again later.'); // it shouldn't be null
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ManageDevicePropertiesNotifier
    extends StateNotifier<AsyncValue<dynamic>> {
  ManageDevicePropertiesNotifier() : super(const AsyncValue.loading());

  Future<void> proccessDeviceProperties(
      {String? adminID,
      String? devicePlatform,
      bool? deviceState,
      String? deviceModel,
      String? deviceVersion,
      String? functionKey}) async {
    try {
      final response = await _dioHelper.manageDeviceProperties(
        adminID: adminID,
        devicePlatform: devicePlatform,
        deviceState: deviceState,
        deviceModel: deviceModel,
        deviceVersion: deviceVersion,
        functionKey: functionKey,
      );

      if (response != null && response.runtimeType == List<dynamic>) {
        // if came from tabular data
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final jsonListData = responseListData
            .map((data) => (data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else if (response != null && response == "SUCCESSFUL") {
        // if came from single data
        state = AsyncValue.data('SUCCESSFUL'); // it shouldn't be null
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(
            'Something went wrong. Please try again later.'); // it shouldn't be null
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ManageCodeRequestNotifier extends StateNotifier<AsyncValue<dynamic>> {
  ManageCodeRequestNotifier() : super(const AsyncValue.loading());

  Future<void> manageCode(
      {String? email,
      String? mobileNo,
      String? deviceID,
      String? code,
      String? functionKey}) async {
    try {
      final response = await _dioHelper.manageCode2(
        email: email,
        mobileNo: mobileNo,
        deviceID: deviceID,
        code: code,
        functionKey: functionKey,
      );
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(response);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProcessUserRequestNotifier extends StateNotifier<AsyncValue<dynamic>> {
  ProcessUserRequestNotifier() : super(const AsyncValue.loading());

  Future<void> processUserReq(
      // if needed to used on web, particularly for admin side, this function should be modified.
      {String? userId,
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
      String? functionKey}) async {
    try {
      final response = await _dioHelper.processUserRequest2(
        userId: userId,
        deviceID: deviceID,
        frontIdImg: frontIdImg,
        frontIdImgKBSize: frontIdImgKBSize,
        backIdImg: backIdImg,
        backIdImgKBSize: backIdImgKBSize,
        selfieImg: selfieImg,
        selfieImgKBSize: selfieImgKBSize,
        givenName: givenName,
        middleName: middleName,
        familyName: familyName,
        suffix: suffix,
        gender: gender,
        birthday: birthday,
        nationality: nationality,
        country: country,
        province: province,
        cityMun: cityMun,
        brgy: brgy,
        unitHBldgSt: unitHBldgSt,
        villSub: villSub,
        zipCode: zipCode,
        sourceOfFund: sourceOfFund,
        empStatus: empStatus,
        employer: employer,
        occupation: occupation,
        emailAdd: emailAdd,
        mobileNo: mobileNo,
        password: password,
        functionKey: functionKey,
      );

      if (response != null && response.runtimeType == List<dynamic>) {
        // if came from tabular data
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final jsonListData = responseListData
            .map((data) => (data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else if (response != null && response.runtimeType != List<dynamic>) {
        // if came from single data
        state = AsyncValue.data(response); // it shouldn't be null
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(
            'Something went wrong. Please try again later.'); // it shouldn't be null
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class RetrieveProductKeyNotifier
    extends StateNotifier<AsyncValue<ProductKeyNames>> {
  RetrieveProductKeyNotifier() : super(const AsyncValue.loading());

  Future<void> initProdKey(
      {String endPoint = '/api/postget/add_product_data',
      String functionKey = 'RETRIEVE_PROD_KEY_NAME'}) async {
    try {
      final response = await _dioHelper.retrieveAdminProductsData(
          endPoint, '', '', '', '', functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<ProductKeyName> jsonListData = responseListData
            .map(
                (data) => ProductKeyName.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(ProductKeyNames(productKeyName: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(ProductKeyNames());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class RetrieveProductVarKeyNotifier
    extends StateNotifier<AsyncValue<ProductKeyNames>> {
  RetrieveProductVarKeyNotifier() : super(const AsyncValue.loading());

  Future<void> initProdKey(
      {String endPoint = '/api/postget/add_product_data',
      String functionKey = 'RETRIEVE_PROD_VAR_KEY_NAME'}) async {
    try {
      final response = await _dioHelper.retrieveAdminProductsData(
          endPoint, '', '', '', '', functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<ProductVarKeyName> jsonListData = responseListData
            .map((data) =>
                ProductVarKeyName.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state =
            AsyncValue.data(ProductKeyNames(productVarKeyName: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(ProductKeyNames());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class AdminIDNotifier extends StateNotifier<dynamic> {
  AdminIDNotifier() : super(null);

  // Method to set initial data from the parent class
  void setAdminID({String? data}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = data;
  }
}

class FullnameNotifier extends StateNotifier<dynamic> {
  FullnameNotifier() : super(null);

  // Method to set initial data from the parent class
  void setFullname({String? data}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = data;
  }
}

class AdminRoleNotifier extends StateNotifier<dynamic> {
  AdminRoleNotifier() : super(null);

  // Method to set initial data from the parent class
  void setAdminRole({String? data}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = data;
  }
}

/* END OF MAIN CLASSES OF STATE NOTIFIER */