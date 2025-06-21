import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/api_main/api_helper_dio.dart';
import 'package:glamgear/internal/data_model/freezed/image_data.dart';
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

class UserVerificationStatusNotifier
    extends StateNotifier<AsyncValue<UserVerificationStatus>> {
  UserVerificationStatusNotifier() : super(const AsyncValue.loading());

  Future<void> initUserVerifStatus(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final UserVerificationStatus jsonListData = responseListData
            .map((data) =>
                UserVerificationStatus.fromJson(data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(UserVerificationStatus());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
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

class KYCDataNotifier extends StateNotifier<AsyncValue<dynamic>> {
  KYCDataNotifier() : super(const AsyncValue.loading());

  Future<void> kYCTempData({
    String endPoint = '/api/postget/manage_kyc_temp_data',
    dynamic fsIDImgValue,
    dynamic fsIDImgSizeValue,
    dynamic isBackIDRequired,
    dynamic bsIDImgValue,
    dynamic bsIDImgSizeValue,
    dynamic selfieIDImgValue,
    dynamic selfieIDImgSizeValue,
    dynamic givenName,
    dynamic middleName,
    dynamic familyName,
    dynamic suffix,
    dynamic gender,
    dynamic birthDate,
    dynamic nationality,
    dynamic country,
    dynamic province,
    dynamic cityMun,
    dynamic brgy,
    dynamic unitHnBStN,
    dynamic villSub,
    dynamic zipCode,
    dynamic sourceOfFund,
    dynamic empStat,
    dynamic employer,
    dynamic occupation,
    dynamic userID,
    dynamic functionKey,
    dynamic subFunctionKey,
  }) async {
    try {
      final response = await _dioHelper.manageKYCTempData(
        endPoint,
        fsIDImgValue,
        fsIDImgSizeValue,
        isBackIDRequired,
        bsIDImgValue,
        bsIDImgSizeValue,
        selfieIDImgValue,
        selfieIDImgSizeValue,
        givenName,
        middleName,
        familyName,
        suffix,
        gender,
        birthDate,
        nationality,
        country,
        province,
        cityMun,
        brgy,
        unitHnBStN,
        villSub,
        zipCode,
        sourceOfFund,
        empStat,
        employer,
        occupation,
        userID,
        functionKey,
        subFunctionKey,
      );

      if (response != null && response.runtimeType == List<dynamic>) {
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

class SubmitKYCDataNotifier extends StateNotifier<AsyncValue<dynamic>> {
  SubmitKYCDataNotifier() : super(const AsyncValue.loading());

  Future<void> kYCTempData({
    String endPoint = '/api/postget/manage_kyc_temp_data',
    dynamic fsIDImgValue,
    dynamic fsIDImgSizeValue,
    dynamic isBackIDRequired,
    dynamic bsIDImgValue,
    dynamic bsIDImgSizeValue,
    dynamic selfieIDImgValue,
    dynamic selfieIDImgSizeValue,
    dynamic givenName,
    dynamic middleName,
    dynamic familyName,
    dynamic suffix,
    dynamic gender,
    dynamic birthDate,
    dynamic nationality,
    dynamic country,
    dynamic province,
    dynamic cityMun,
    dynamic brgy,
    dynamic unitHnBStN,
    dynamic villSub,
    dynamic zipCode,
    dynamic sourceOfFund,
    dynamic empStat,
    dynamic employer,
    dynamic occupation,
    dynamic userID,
    dynamic functionKey,
    dynamic subFunctionKey,
  }) async {
    try {
      final response = await _dioHelper.manageKYCTempData(
        endPoint,
        fsIDImgValue,
        fsIDImgSizeValue,
        isBackIDRequired,
        bsIDImgValue,
        bsIDImgSizeValue,
        selfieIDImgValue,
        selfieIDImgSizeValue,
        givenName,
        middleName,
        familyName,
        suffix,
        gender,
        birthDate,
        nationality,
        country,
        province,
        cityMun,
        brgy,
        unitHnBStN,
        villSub,
        zipCode,
        sourceOfFund,
        empStat,
        employer,
        occupation,
        userID,
        functionKey,
        subFunctionKey,
      );

      if (response != null && response.runtimeType == List<dynamic>) {
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

class ProvinceAddressNotifier
    extends StateNotifier<AsyncValue<List<Map<String, dynamic>>>> {
  ProvinceAddressNotifier() : super(const AsyncValue.loading());

  Future<void> initProvAdd(String endPoint, String code,
      {String type = 'prov'}) async {
    try {
      final response = await _dioHelper.kycPhilippineAddress(
        endPoint,
        type,
        code,
      );

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final jsonListData = responseListData
            .map((data) => (data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(const []);
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CityAddressNotifier
    extends StateNotifier<AsyncValue<List<Map<String, dynamic>>>> {
  CityAddressNotifier() : super(const AsyncValue.loading());

  Future<void> initCityAdd(String endPoint, String code,
      {String type = 'city'}) async {
    try {
      final response = await _dioHelper.kycPhilippineAddress(
        endPoint,
        type,
        code,
      );

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final jsonListData = responseListData
            .map((data) => (data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(const []);
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class BarangayAddressNotifier
    extends StateNotifier<AsyncValue<List<Map<String, dynamic>>>> {
  BarangayAddressNotifier() : super(const AsyncValue.loading());

  Future<void> initBrgyAdd(String endPoint, String code,
      {String type = 'brgy'}) async {
    try {
      final response = await _dioHelper.kycPhilippineAddress(
        endPoint,
        type,
        code,
      );

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final jsonListData = responseListData
            .map((data) => (data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(const []);
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ClientDashboardDataNotifier
    extends StateNotifier<AsyncValue<ProductClientDashboardData>> {
  ClientDashboardDataNotifier() : super(const AsyncValue.loading());

  Future<void> initDashboardData(
      String endPoint, String prodCatName, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          prodCatName,
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<ProductDashboardData> jsonListData = responseListData
            .map((data) =>
                ProductDashboardData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(
            ProductClientDashboardData(productData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(ProductClientDashboardData(productData: null));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
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

class BadgeCountNotifier extends StateNotifier<AsyncValue<BadgeData>> {
  BadgeCountNotifier() : super(const AsyncValue.loading());

  Future<void> initProdClientDPreview(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final List<BadgeCounts> jsonListData = responseListData
          .map((data) => BadgeCounts.fromJson(data as Map<String, dynamic>))
          .toList(); // Saved into your data model as List<Map<String, dynamic>>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(BadgeData(badgeData: jsonListData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductClientDataPreviewNotifier
    extends StateNotifier<AsyncValue<ProductClientPreviewData>> {
  ProductClientDataPreviewNotifier() : super(const AsyncValue.loading());

  Future<void> initProdClientDPreview(String endPoint, String prodId,
      String prodVarID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodId,
          prodVarID,
          "",
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final List<ProductPreviewData> jsonListData = responseListData
          .map((data) =>
              ProductPreviewData.fromJson(data as Map<String, dynamic>))
          .toList(); // Saved into your data model as List<Map<String, dynamic>>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state =
          AsyncValue.data(ProductClientPreviewData(productData: jsonListData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductPreviewDataImgNotifier
    extends StateNotifier<AsyncValue<ProductClientPreviewImgData>> {
  ProductPreviewDataImgNotifier() : super(const AsyncValue.loading());

  Future<void> initProdImgPreview(
      String endPoint, String prodId, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodId,
          "",
          "",
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final List<ImageDatawSub> jsonListData = responseListData
          .map((data) => ImageDatawSub.fromJson(data as Map<String, dynamic>))
          .toList(); // Saved into your data model as List<Map<String, dynamic>>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state =
          AsyncValue.data(ProductClientPreviewImgData(prodImg: jsonListData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductPreviewDataFullDescNotifier
    extends StateNotifier<AsyncValue<ProductClientPreviewFullDescData>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  ProductPreviewDataFullDescNotifier() : super(const AsyncValue.loading());

  Future<void> initProdFullDescPreview(
      String endPoint, String prodId, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodId,
          "",
          "",
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final jsonData = jsonEncode(responseListData);

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(
          ProductClientPreviewFullDescData(prodDescription: jsonData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductVariantSpecsDataNotifier
    extends StateNotifier<AsyncValue<ProductVariantSpecs>> {
  ProductVariantSpecsDataNotifier()
      : super(AsyncValue.data(ProductVariantSpecs(prodVarSpecOptData: [])));

  Future<void> initProdVarSpecs(
      String endPoint, String prodId, String functionKey) async {
    try {
      state = AsyncValue.loading();
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodId,
          "",
          "",
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final List<ProductVarPreviewClientKeyValue> jsonListData = responseListData
          .map((data) => ProductVarPreviewClientKeyValue.fromJson(
              data as Map<String, dynamic>))
          .toList(); // Saved into your data model as List<Map<String, dynamic>>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(
          ProductVariantSpecs(prodVarSpecOptData: jsonListData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductVariantPreviewDataNotifier
    extends StateNotifier<AsyncValue<ProductVariantPreview>> {
  ProductVariantPreviewDataNotifier()
      : super(AsyncValue.data(ProductVariantPreview(prodVarPreviewData: [])));

  Future<void> initProdVarPreview(
      String endPoint, String prodVarId, String functionKey) async {
    try {
      state = AsyncValue.loading();
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          prodVarId,
          "",
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final List<ProductVariantPreviewData> jsonListData = responseListData
          .map((data) =>
              ProductVariantPreviewData.fromJson(data as Map<String, dynamic>))
          .toList(); // Saved into your data model as List<Map<String, dynamic>>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(
          ProductVariantPreview(prodVarPreviewData: jsonListData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductVariantPreviewImgDataNotifier
    extends StateNotifier<AsyncValue<ProductVariantPreviewImgData>> {
  ProductVariantPreviewImgDataNotifier() : super(const AsyncValue.loading());

  Future<void> initProdVarImgPreview(
      String endPoint, String prodVarId, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          prodVarId,
          "",
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final List<ImageProdVarData> jsonListData = responseListData
          .map(
              (data) => ImageProdVarData.fromJson(data as Map<String, dynamic>))
          .toList(); // Saved into your data model as List<Map<String, dynamic>>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state =
          AsyncValue.data(ProductVariantPreviewImgData(prodImg: jsonListData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class AddToCartNotifier extends StateNotifier<AsyncValue<String>> {
  AddToCartNotifier() : super(const AsyncValue.loading());

  Future<void> initAddToCart(String endPoint, String prodID, String prodVarID,
      String userID, int quantity, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodID,
          prodVarID,
          "",
          userID,
          quantity,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

class CartPreviewNotifier extends StateNotifier<AsyncValue<CartListData>> {
  CartPreviewNotifier() : super(const AsyncValue.loading());

  Future<void> initCartPreview(
      String endPoint, String userID, String functionKey) async {
    // can handle empty list
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<CartPropertiesData> jsonListData = responseListData
            .map((data) =>
                CartPropertiesData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(CartListData(cartPropsData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(CartListData(cartPropsData: null));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CartBottomPreviewNotifier
    extends StateNotifier<AsyncValue<CartBottomPropData>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  CartBottomPreviewNotifier() : super(const AsyncValue.loading());

  Future<void> initBottomPropData(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final CartBottomPropData jsonData = responseListData
          .map((data) =>
              CartBottomPropData.fromJson(data as Map<String, dynamic>))
          .first; // Saved into your data model as Map<String, dynamic>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(jsonData);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CartPreviewManageDataNotifer extends StateNotifier<AsyncValue<dynamic>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  CartPreviewManageDataNotifer() : super(const AsyncValue.loading());

  Future<void> preventInvalidIsSelectedState(
      String endPoint, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          "",
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

  Future<void> decrementSpecificItem(
      String endPoint, String userID, String cartID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          cartID,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

  Future<void> incrementSpecificItem(
      String endPoint,
      String prodID,
      String prodVarID,
      String userID,
      String cartID,
      String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodID,
          prodVarID,
          "",
          userID,
          0,
          cartID,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

  Future<void> deleteSpecificItem(
      // disable set to 1
      String endPoint,
      String userID,
      String cartID,
      String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          cartID,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

  Future<void> deleteMultiSpecificItem(
      // disable set to 1
      String endPoint,
      String userID,
      String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

  Future<void> deleteAllItems(
      // disable set to 1
      String endPoint,
      String userID,
      String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

  Future<void> toggleSpecificItemSelect(
      String endPoint, String userID, String cartID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          cartID,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

  Future<void> toggleAll(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

class LocalDataModelUpdaterNotifier
    extends StateNotifier<AsyncValue<CartListData>> {
  LocalDataModelUpdaterNotifier() : super(const AsyncValue.loading());

  Future<void> updateSpecificItemQty(String cartID, int? newQty) async {
    try {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = state.whenData((cartListData) {
        final updatedCartListData = cartListData.cartPropsData!
            .map((data) =>
                data.cartID == cartID ? data.copyWith(quantity: newQty) : data)
            .toList();

        return cartListData.copyWith(cartPropsData: updatedCartListData);
      });
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

class ProdVarIDPreViewBottomSheetNotifier extends StateNotifier<String> {
  ProdVarIDPreViewBottomSheetNotifier() : super('');

  // Method to set initial data from the parent class
  void setID({String id = ''}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = id;
  }
}

class NavigationNotifier extends StateNotifier<void> {
  NavigationNotifier() : super(null);

  void navigateToPath(BuildContext context, path) {
    if (context.mounted) {
      // Check if context is still valid
      context.go(path); // Safe navigation
    }
  }
}

class CheckoutProductIDNotifier extends StateNotifier<String> {
  CheckoutProductIDNotifier() : super('');

  // Method to set initial data from the parent class
  void setID({String id = ''}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = id;
  }
}

class CheckoutSinglePreviewNotifier
    extends StateNotifier<AsyncValue<CheckoutProductData>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  CheckoutSinglePreviewNotifier()
      : super(AsyncValue.data(CheckoutProductData(
            imgData: null,
            prodName: null,
            variant: null,
            discPrice: null,
            quantity: null,
            stock: null,
            tagValue: null)));

  Future<void> initCheckoutSingleRecord(String endPoint, String prodID,
      String prodVarID, String userID, String functionKey) async {
    try {
      state = AsyncValue.loading();
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodID,
          prodVarID,
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final CheckoutProductData jsonData = responseListData
          .map((data) =>
              CheckoutProductData.fromJson(data as Map<String, dynamic>))
          .first; // Saved into your data model as Map<String, dynamic>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(jsonData);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CheckoutMultiplePreviewNotifier
    extends StateNotifier<AsyncValue<CheckoutProduct>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  CheckoutMultiplePreviewNotifier()
      : super(AsyncValue.data(CheckoutProduct(checkoutProductData: null)));

  Future<void> initCheckoutMultipleRecords(
      String endPoint, String userID, String functionKey) async {
    try {
      state = AsyncValue.loading();
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final List<CheckoutProductData> jsonListData = responseListData
          .map((data) =>
              CheckoutProductData.fromJson(data as Map<String, dynamic>))
          .toList(); // Saved into your data model as List<Map<String, dynamic>>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state =
          AsyncValue.data(CheckoutProduct(checkoutProductData: jsonListData));
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CheckoutPricePreviewNotifier
    extends StateNotifier<AsyncValue<CheckoutProductPricesData>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  CheckoutPricePreviewNotifier() : super(const AsyncValue.loading());

  Future<void> initCheckoutPriceSingleRecord({int quantity = 0, String? endPoint, String? prodID,
      String? prodVarID, String? userID, String? functionKey}) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint!,
          prodID ?? "",
          prodVarID ?? "",
          "",
          userID!,
          quantity,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey!);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final CheckoutProductPricesData jsonData = responseListData
          .map((data) =>
              CheckoutProductPricesData.fromJson(data as Map<String, dynamic>))
          .first; // Saved into your data model as Map<String, dynamic>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(jsonData);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }

  Future<void> initCheckoutPriceMultipleRecords(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      final List responseListData = response
          .map((json) => json as Map<String, dynamic>)
          .toList() as List<dynamic>;

      final CheckoutProductPricesData jsonData = responseListData
          .map((data) =>
              CheckoutProductPricesData.fromJson(data as Map<String, dynamic>))
          .first; // Saved into your data model as Map<String, dynamic>

      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception

      state = AsyncValue.data(jsonData);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CheckoutQuantityNotifier extends StateNotifier<int> {
  CheckoutQuantityNotifier() : super(0);

  // Method to set initial data from the parent class
  void setQuantity({int qty = 1}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = qty;
  }

  void increment() => state = state + 1;

  void decrement() => state = state - 1;
}

class CheckoutInstructionsStateNotifier extends StateNotifier<bool> {
  CheckoutInstructionsStateNotifier() : super(true);

  void getCheckoutInstructionsState(WidgetRef ref) {
    final sharedPrefs = ref.watch(sharedPrefProvider);
    bool? sharedPrefCIStatus = sharedPrefs.getCheckoutInstructionsState();
    state = sharedPrefCIStatus!;
  }
}

class CheckoutUserAddressNotifier
    extends StateNotifier<AsyncValue<UserShippingAddressDataSingle>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  CheckoutUserAddressNotifier()
      : super(AsyncValue.data(UserShippingAddressDataSingle(
            shippingAddressID: null,
            recipientName: null,
            mobileNo: null,
            region: null,
            city: null,
            district: null,
            stBldg: null,
            unitFloor: null,
            addressCategory: null,
            isDefault: null)));

  Future<void> initCheckoutUserAddress(
      String endPoint, String userID, String functionKey) async {
    try {
      state = AsyncValue.loading();
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType != List) {
        state = AsyncValue.data(UserShippingAddressDataSingle(
            shippingAddressID: null,
            recipientName: null,
            mobileNo: null,
            region: null,
            city: null,
            district: null,
            stBldg: null,
            unitFloor: null,
            addressCategory: null,
            isDefault: null));
      } else {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final UserShippingAddressDataSingle jsonData = responseListData
            .map((data) => UserShippingAddressDataSingle.fromJson(
                data as Map<String, dynamic>))
            .first; // Saved into your data model as Map<String, dynamic>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonData);
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CheckoutUserAddressListNotifier
    extends StateNotifier<AsyncValue<UserShippingAddress>> {
  // This has been thoroughly tested. If you encounter an error, the only reasons are data validity or availability.
  CheckoutUserAddressListNotifier()
      : super(AsyncValue.data(UserShippingAddress(userShippingData: null)));

  Future<void> initCheckoutUserAddress(
      String endPoint, String userID, String functionKey) async {
    try {
      state = AsyncValue.loading();
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType != List) {
        state = AsyncValue.data(UserShippingAddress(userShippingData: null));
      } else {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<UserShippingAddressData> jsonListData = responseListData
            .map((data) =>
                UserShippingAddressData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(
            UserShippingAddress(userShippingData: jsonListData));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class HomeScrollingStateNotifier extends StateNotifier<bool> {
  HomeScrollingStateNotifier() : super(false);

  void setHomeScrollingState(bool scrollState) {
    state = scrollState;
  }
}

// class RegionListNotifier extends StateNotifier<AsyncValue<List<dynamic>>> {
//   RegionListNotifier() : super(AsyncValue.data(const []));

//   Future<void> setProvinceList(String endPoint,
//       {String type = 'prov', String name = '_address'}) async {
//     try {
//       state = AsyncValue.loading();
//       final response = await _dioHelper.manageAddressList(endPoint, type, name);

//       developer.log('What runtimeType: ${response.runtimeType}');

//       if (response != null && response.runtimeType != List) {
//         state = AsyncValue.data(const []);
//       } else {
//         final List<dynamic> responseListData =
//             response.map((json) => json['Name']).toList();

//         if (!mounted) {
//           return;
//         } // This important to resolve invalidate state processing exception

//         state = AsyncValue.data(responseListData);
//       }
//     } catch (e, stackTrace) {
//       if (!mounted) {
//         return;
//       } // This important to resolve invalidate state processing exception
//       state = AsyncValue.error(e, stackTrace);
//     }
//   }
// }

// class CityListNotifier extends StateNotifier<AsyncValue<List<dynamic>>> {
//   CityListNotifier() : super(AsyncValue.data(const []));

//   Future<void> setCityList(String endPoint,
//       {String type = 'city', String name = '_address'}) async {
//     try {
//       state = AsyncValue.loading();
//       final response = await _dioHelper.manageAddressList(endPoint, type, name);

//       if (response != null && response.runtimeType != List) {
//         state = AsyncValue.data(const []);
//       } else {
//         final List<dynamic> responseListData =
//             response.map((json) => json['Name']).toList();

//         if (!mounted) {
//           return;
//         } // This important to resolve invalidate state processing exception

//         state = AsyncValue.data(responseListData);
//       }
//     } catch (e, stackTrace) {
//       if (!mounted) {
//         return;
//       } // This important to resolve invalidate state processing exception
//       state = AsyncValue.error(e, stackTrace);
//     }
//   }
// }

// class DistrictListNotifier extends StateNotifier<AsyncValue<List<dynamic>>> {
//   DistrictListNotifier() : super(AsyncValue.data(const []));

//   Future<void> setDistrictList(String endPoint,
//       {String type = 'brgy', String name = '_address'}) async {
//     try {
//       state = AsyncValue.loading();
//       final response = await _dioHelper.manageAddressList(endPoint, type, name);

//       if (response != null && response.runtimeType != List) {
//         state = AsyncValue.data(const []);
//       } else {
//         final List<dynamic> responseListData =
//             response.map((json) => json['Name']).toList();

//         if (!mounted) {
//           return;
//         } // This important to resolve invalidate state processing exception

//         state = AsyncValue.data(responseListData);
//       }
//     } catch (e, stackTrace) {
//       if (!mounted) {
//         return;
//       } // This important to resolve invalidate state processing exception
//       state = AsyncValue.error(e, stackTrace);
//     }
//   }
// }

class LabelCategoryNotifier extends StateNotifier<List<Map<String, String>>> {
  LabelCategoryNotifier() : super([]);

  // Method to set initial data from the parent class
  void initLabelCategory() {
    state = [
      {'options': 'Home'},
      {'options': 'Work'}
    ];
  }
}

class ManageShippingAddressNotifier extends StateNotifier<AsyncValue<dynamic>> {
  ManageShippingAddressNotifier() : super(const AsyncValue.loading());

  Future<void> manageAddress(
      {dynamic endPoint,
      dynamic shippingAddressID,
      dynamic userID,
      dynamic recipientsName,
      dynamic mobileNo,
      dynamic region,
      dynamic city,
      dynamic district,
      dynamic stBldg,
      dynamic unitFloor,
      dynamic addressCateg,
      dynamic isDefault,
      dynamic functionKey}) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          // when using dynamic, and when you pass null, make sure that String or other type is nullable
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          shippingAddressID,
          recipientsName,
          mobileNo,
          region,
          city,
          district,
          stBldg,
          unitFloor,
          addressCateg,
          isDefault,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

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

class ManageOrderShippingAddressNotifier
    extends StateNotifier<AsyncValue<dynamic>> {
  ManageOrderShippingAddressNotifier() : super(const AsyncValue.loading());

  Future<void> manageAddress(
      {dynamic endPoint,
      dynamic shippingAddressID,
      dynamic userID,
      dynamic recipientsName,
      dynamic mobileNo,
      dynamic region,
      dynamic city,
      dynamic district,
      dynamic stBldg,
      dynamic unitFloor,
      dynamic addressCateg,
      dynamic isDefault,
      dynamic batchID,
      dynamic functionKey}) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          // when using dynamic, and when you pass null, make sure that String or other type is nullable
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          shippingAddressID,
          recipientsName,
          mobileNo,
          region,
          city,
          district,
          stBldg,
          unitFloor,
          addressCateg,
          isDefault,
          false,
          "",
          0.00,
          batchID,
          null,
          null,
          functionKey);

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

class PlaceOrderNotifier extends StateNotifier<AsyncValue<String>> {
  PlaceOrderNotifier() : super(const AsyncValue.loading());

  Future<void> initPlaceOrder(
      String endPoint,
      String prodID,
      String prodVarID,
      String userID,
      int quantity,
      String payRefCode,
      double amountToPay,
      String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          prodID, // ensure that you filter this out on your source code
          prodVarID, // ensure that you filter this out on your source code
          "",
          userID,
          quantity,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          payRefCode,
          amountToPay,
          "",
          null,
          null,
          functionKey);

      if (response != null && response != "SUCCESSFUL") {
        // this is optional since I modified the response data if the SQL Server response is null
        state = AsyncValue.data(
            'Something went wrong. Please try again later.'); // it shouldn't be null
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(response);
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class DisplayNameMyOrdersBadgeCountsNotifier
    extends StateNotifier<AsyncValue<DisplayNameMyOrdersBadgeCounts>> {
  DisplayNameMyOrdersBadgeCountsNotifier() : super(AsyncValue.loading());

  Future<void> initAccountInfoNBC(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          0,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final DisplayNameMyOrdersBadgeCounts jsonListData = responseListData
            .map((data) => DisplayNameMyOrdersBadgeCounts.fromJson(
                data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(DisplayNameMyOrdersBadgeCounts());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class MyOrdersToPayListDataNotifier
    extends StateNotifier<AsyncValue<MyOrdersToPayListData>> {
  MyOrdersToPayListDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initMyOrderListData(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<MyOrdersToPayData> jsonListData = responseListData
            .map((data) =>
                MyOrdersToPayData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state =
            AsyncValue.data(MyOrdersToPayListData(myOrdersData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(MyOrdersToPayListData(myOrdersData: []));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class DeliveryDetailsDataNotifier
    extends StateNotifier<AsyncValue<ProductDeliveryDetailsData>> {
  DeliveryDetailsDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initDeliveryDetailsData(String endPoint, String userID,
      String batchID, int? orderTabIndex, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          batchID,
          orderTabIndex,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final ProductDeliveryDetailsData jsonListData = responseListData
            .map((data) => ProductDeliveryDetailsData.fromJson(
                data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(ProductDeliveryDetailsData());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class DeliveryProgressDetailsDataNotifier
    extends StateNotifier<AsyncValue<ProductListDeliveryProgressDetailsData>> {
  DeliveryProgressDetailsDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initDeliveryProgDetailsData(String endPoint, String userID,
      String batchID, int? orderTabIndex, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          batchID,
          orderTabIndex,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<ProductDeliveryProgressDetailsData> jsonListData =
            responseListData
                .map((data) => ProductDeliveryProgressDetailsData.fromJson(
                    data as Map<String, dynamic>))
                .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(ProductListDeliveryProgressDetailsData(
            delProgressList: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(ProductListDeliveryProgressDetailsData());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class OrderDetailsDataNotifier
    extends StateNotifier<AsyncValue<OrderDetailsData>> {
  OrderDetailsDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initOrderDetailsData(String endPoint, String userID,
      String batchID, int? orderTabIndex, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          batchID,
          orderTabIndex,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final OrderDetailsData jsonListData = responseListData
            .map((data) =>
                OrderDetailsData.fromJson(data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(OrderDetailsData());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class OrderDetailsOrderSummaryDataNotifier
    extends StateNotifier<AsyncValue<List<Map<String, dynamic>>>> {
  // I prefer to implement List<Map<String, dynamic>> instead of ToPayOrderDetailsSummaryData data model for better list generation of label and value
  OrderDetailsOrderSummaryDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initOrderDetailsData(String endPoint, String userID,
      String batchID, int? orderTabIndex, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          batchID,
          orderTabIndex,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final jsonListData = responseListData
            .map((data) => data as Map<String, dynamic>)
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(const []);
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class MyOrdersToShipListDataNotifier
    extends StateNotifier<AsyncValue<MyOrdersToShipListData>> {
  MyOrdersToShipListDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initMyOrderListData(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<MyOrdersToShipData> jsonListData = responseListData
            .map((data) =>
                MyOrdersToShipData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state =
            AsyncValue.data(MyOrdersToShipListData(myOrdersData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(MyOrdersToShipListData(myOrdersData: []));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class MyOrdersToReceiveListDataNotifier
    extends StateNotifier<AsyncValue<MyOrdersToReceiveListData>> {
  MyOrdersToReceiveListDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initMyOrderListData(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<MyOrdersToReceiveData> jsonListData = responseListData
            .map((data) =>
                MyOrdersToReceiveData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(
            MyOrdersToReceiveListData(myOrdersData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(MyOrdersToReceiveListData(myOrdersData: []));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class MyOrdersAllPurchasedListDataNotifier
    extends StateNotifier<AsyncValue<MyOrdersAllPurchasedListData>> {
  MyOrdersAllPurchasedListDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initMyOrderListData(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<MyOrdersAllPurchasedData> jsonListData = responseListData
            .map((data) =>
                MyOrdersAllPurchasedData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(
            MyOrdersAllPurchasedListData(myOrdersData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(MyOrdersAllPurchasedListData(myOrdersData: []));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class MyOrdersReturnRefListDataNotifier
    extends StateNotifier<AsyncValue<MyOrdersReturnRefListData>> {
  MyOrdersReturnRefListDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initMyOrderListData(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<MyOrdersReturnRefData> jsonListData = responseListData
            .map((data) =>
                MyOrdersReturnRefData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(
            MyOrdersReturnRefListData(myOrdersData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(MyOrdersReturnRefListData(myOrdersData: []));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class MyOrdersCancellationListDataNotifier
    extends StateNotifier<AsyncValue<MyOrdersCancellationListData>> {
  MyOrdersCancellationListDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initMyOrderListData(
      String endPoint, String userID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final List<MyOrdersCancellationData> jsonListData = responseListData
            .map((data) =>
                MyOrdersCancellationData.fromJson(data as Map<String, dynamic>))
            .toList(); // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(
            MyOrdersCancellationListData(myOrdersData: jsonListData));
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(MyOrdersCancellationListData(myOrdersData: []));
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class CancelDetailsDataNotifier
    extends StateNotifier<AsyncValue<CancelDetailsData>> {
  CancelDetailsDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initCancelDetailsData(String endPoint, String userID,
      String batchID, String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          batchID,
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final CancelDetailsData jsonListData = responseListData
            .map((data) =>
                CancelDetailsData.fromJson(data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(CancelDetailsData());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class IsAddAddressNotifier extends StateNotifier<bool> {
  IsAddAddressNotifier() : super(true);

  // Method to set initial data from the parent class
  void whatState({bool isEnabled = true}) {
    if (!mounted) {
      return;
    } // This important to resolve invalidate state processing exception
    state = isEnabled;
  }
}

class SubjectForEditAddressDataNotifier
    extends StateNotifier<AsyncValue<SubjectForEditAddressData>> {
  SubjectForEditAddressDataNotifier()
      : super(AsyncValue
            .loading()); // IMPORTANT NOTE: to not always show the loading interface if navigates back and forth

  Future<void> initAddressData(String endPoint, String userID, String shipAddID,
      String functionKey) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          shipAddID,
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          null,
          false,
          "",
          0.00,
          "",
          null,
          null,
          functionKey);

      if (response != null && response.runtimeType == List<dynamic>) {
        final List responseListData = response
            .map((json) => json as Map<String, dynamic>)
            .toList() as List<dynamic>;

        final SubjectForEditAddressData jsonListData = responseListData
            .map((data) => SubjectForEditAddressData.fromJson(
                data as Map<String, dynamic>))
            .first; // Saved into your data model as List<Map<String, dynamic>>

        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception

        state = AsyncValue.data(jsonListData);
      } else {
        if (!mounted) {
          return;
        } // This important to resolve invalidate state processing exception
        state = AsyncValue.data(SubjectForEditAddressData());
      }
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class OrderCancellationOptListNotifier
    extends StateNotifier<AsyncValue<dynamic>> {
  OrderCancellationOptListNotifier() : super(const AsyncValue.loading());

  Future<void> initOrderCancellationOptionList(
      {dynamic endPoint, dynamic userID, dynamic functionKey}) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          // when using dynamic, and when you pass null, make sure that String or other type is nullable
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          "",
          0.00,
          null,
          null,
          null,
          functionKey);

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

class CancelOrderNotifier extends StateNotifier<AsyncValue<dynamic>> {
  CancelOrderNotifier() : super(const AsyncValue.loading());

  Future<void> processRequest(
      {String endPoint = '/api/postget/process_client_side_data',
      dynamic userID,
      dynamic batchID,
      dynamic cReason,
      dynamic functionKey}) async {
    try {
      final response = await _dioHelper.manageClientSideData(
          // when using dynamic, and when you pass null, make sure that String or other type is nullable
          endPoint,
          "",
          "",
          "",
          userID,
          0,
          "",
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          "",
          0.00,
          batchID,
          null,
          cReason,
          functionKey);

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

/* END OF MAIN CLASSES OF STATE NOTIFIER */

class ImageDataWithSubNotifier extends StateNotifier<List<ImageDatawSub>> {
  ImageDataWithSubNotifier() : super([]);

  // Method to set initial data from the parent class
  void initialImageData(List<ImageDatawSub> items, String prodID) {
    state = items
        .where((data) =>
            data.tag == "sub" &&
            data.prodId!.toLowerCase().contains(prodID.toLowerCase()))
        .toList();
  }
}

class ProductSingleVariantImageNotifier extends StateNotifier<Uint8List> {
  ProductSingleVariantImageNotifier() : super(Uint8List(0));

  // Method to set initial data from the parent class
  void initializeImgData(List<ImageDatawSub> items, String prodID) {
    state = items
        .where((data) =>
            data.tag == "sub" &&
            data.prodId!.toLowerCase().contains(prodID.toLowerCase()))
        .first
        .img!;
  }
}

class ProductPricesDataNotifier
    extends StateNotifier<AsyncValue<List<ProductVariantPreviewData>>> {
  ProductPricesDataNotifier() : super(const AsyncValue.loading());

  Future<void> initializeProdPrice(
      {required List<ProductVariantPreviewData> items,
      required String prodID}) async {
    try {
      final filteredData = items
          .where((data) => (data.prodVarId?.toLowerCase() ?? '')
              .contains(prodID.toLowerCase()))
          .toList();

      state = AsyncValue.data(filteredData);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductOrigPriceNotifier extends StateNotifier<double> {
  ProductOrigPriceNotifier() : super(0);

  void initializeProdPrice(
      List<ProductVariantPreviewData> items, String prodID) {
    state = items
        .where((data) =>
            data.prodVarId!.toLowerCase().contains(prodID.toLowerCase()))
        .first
        .origPrice!;
  }
}

class ProductSpecsHeaderNotifier extends StateNotifier<List<String>> {
  ProductSpecsHeaderNotifier()
      : super([]); // I decided to separate the specs header

  void initializeSpecs(List<ProductVarClientKeyValue> items, String prodID) {
    final itemList = items
        .where((data) =>
            data.prodVarID!.toLowerCase().contains(prodID.toLowerCase()))
        .toList();
    state = (itemList.map((list) => list.prodVKeyName).toSet().toList())
        .cast<String>();
  }
}

class ProductListSpecsNotifier
    extends StateNotifier<AsyncValue<List<ProductVarClientKeyValue>>> {
  ProductListSpecsNotifier() : super(const AsyncValue.loading());

  Future<void> initializeSpecs(
      {required List<ProductVarClientKeyValue> items}) async {
    try {
      state = AsyncValue.data(items);
    } catch (e, stackTrace) {
      if (!mounted) {
        return;
      } // This important to resolve invalidate state processing exception
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

class ProductSpecsNotifier extends StateNotifier<String> {
  ProductSpecsNotifier() : super('');

  void initializeSpecs(List<ProductVarClientKeyValue> items, String prodID) {
    state = items
        .where((data) =>
            data.prodVarID!.toLowerCase().contains(prodID.toLowerCase()))
        .first
        .value!;
  }
}

class ProductAvailableQuantityNotifier extends StateNotifier<int> {
  ProductAvailableQuantityNotifier() : super(0);

  void initializeSpecs(List<ProductVariantPreviewData> items, String prodID) {
    state = items
        .where((data) =>
            data.prodVarId!.toLowerCase().contains(prodID.toLowerCase()))
        .first
        .stock!;
  }
}

class MyOrdersDataNotifier extends StateNotifier<Map<String, dynamic>> {
  MyOrdersDataNotifier()
      : super({"change_add": false, "batch_id": null, "is_pending": false});

  void setData(
      {dynamic ischangeAdd = false, dynamic batchID, bool isPending = false}) {
    final yourJsonData = {
      "change_add": ischangeAdd,
      "batch_id": batchID,
      "is_pending": isPending
    };
    state = yourJsonData;
  }
}
