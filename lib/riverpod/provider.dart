import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/api_main/api_helper_dio.dart';
import 'package:glamgear/internal/data_model/freezed/image_data.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_admin_data.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_client_data.dart';
import 'package:glamgear/internal/data_model/local_storage/shared_pref.dart';
import 'package:glamgear/riverpod/state_notifier/state_ntfier_clsses.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

// Necessary for code-generation to work
part 'provider.g.dart';

/// This will create a provider named `retrieveProducts`
/// which will cache the result of this function.

final sharedPrefProvider = ChangeNotifierProvider<DataModel>(
  (ref) => DataModel(),
);

final sharedPrefFutureProvider = FutureProvider<DataModel>(
  (ref) => DataModel(),
);

/* START OF SINGLE PRODUCT PREVIEW PROVIDER */

final userVerificationStatusProvider = StateNotifierProvider<
    UserVerificationStatusNotifier, AsyncValue<UserVerificationStatus>>((ref) {
  return UserVerificationStatusNotifier();
});

final regStateNotifierProvider =
    StateNotifierProvider<RegStateNotifier, bool>((ref) {
  return RegStateNotifier();
});

final kYCDataProvider =
    StateNotifierProvider<KYCDataNotifier, AsyncValue<dynamic>>((ref) {
  return KYCDataNotifier();
});

final submitkYCDataProvider =
    StateNotifierProvider<SubmitKYCDataNotifier, AsyncValue<dynamic>>((ref) {
  return SubmitKYCDataNotifier();
});

final provinceAddressProvider = StateNotifierProvider<ProvinceAddressNotifier,
    AsyncValue<List<Map<String, dynamic>>>>((ref) {
  return ProvinceAddressNotifier();
});

final cityAddressProvider = StateNotifierProvider<CityAddressNotifier,
    AsyncValue<List<Map<String, dynamic>>>>((ref) {
  return CityAddressNotifier();
});

final barangayAddressProvider = StateNotifierProvider<BarangayAddressNotifier,
    AsyncValue<List<Map<String, dynamic>>>>((ref) {
  return BarangayAddressNotifier();
});

final dashboardBottomAppBarIndexProvider =
    StateNotifierProvider<DashboardBottomAppBarIndexNotifier, int>((ref) {
  return DashboardBottomAppBarIndexNotifier();
});

final clientDashboardDataProvider = StateNotifierProvider<
    ClientDashboardDataNotifier, AsyncValue<ProductClientDashboardData>>((ref) {
  return ClientDashboardDataNotifier();
});

final checkButtonStateProvider =
    StateNotifierProvider<ButtonStateNotifier, bool>((ref) {
  return ButtonStateNotifier();
});

final accessCodeRequestProvider =
    StateNotifierProvider<AccessCodeRequestNotifier, AsyncValue<String>>((ref) {
  return AccessCodeRequestNotifier();
});

final retrieveBadgeDataProvider =
    StateNotifierProvider<BadgeCountNotifier, AsyncValue<BadgeData>>((ref) {
  return BadgeCountNotifier();
});

final prodClientPreviewDataProvider = StateNotifierProvider<
    ProductClientDataPreviewNotifier,
    AsyncValue<ProductClientPreviewData>>((ref) {
  return ProductClientDataPreviewNotifier();
});

final prodPreviewImgDataProvider = StateNotifierProvider<
    ProductPreviewDataImgNotifier,
    AsyncValue<ProductClientPreviewImgData>>((ref) {
  return ProductPreviewDataImgNotifier();
});

final prodPreviewFullDescDataProvider = StateNotifierProvider<
    ProductPreviewDataFullDescNotifier,
    AsyncValue<ProductClientPreviewFullDescData>>((ref) {
  return ProductPreviewDataFullDescNotifier();
});

final prodVarSpecsDataProvider = StateNotifierProvider<
    ProductVariantSpecsDataNotifier, AsyncValue<ProductVariantSpecs>>((ref) {
  return ProductVariantSpecsDataNotifier();
});

final prodVarPreviewDataProvider = StateNotifierProvider<
    ProductVariantPreviewDataNotifier,
    AsyncValue<ProductVariantPreview>>((ref) {
  return ProductVariantPreviewDataNotifier();
});

final prodVarPreviewImgDataProvider = StateNotifierProvider<
    ProductVariantPreviewImgDataNotifier,
    AsyncValue<ProductVariantPreviewImgData>>((ref) {
  return ProductVariantPreviewImgDataNotifier();
});

final addToCartProvider =
    StateNotifierProvider<AddToCartNotifier, AsyncValue<String>>((ref) {
  return AddToCartNotifier();
});

final cartPreviewProvider =
    StateNotifierProvider<CartPreviewNotifier, AsyncValue<CartListData>>((ref) {
  return CartPreviewNotifier();
});

final cartBottomPreviewProvider = StateNotifierProvider<
    CartBottomPreviewNotifier, AsyncValue<CartBottomPropData>>((ref) {
  return CartBottomPreviewNotifier();
});

final cartPreviewManageDataProvider =
    StateNotifierProvider<CartPreviewManageDataNotifer, AsyncValue<dynamic>>(
        (ref) {
  return CartPreviewManageDataNotifer();
});

final localDataModelUpdaterProvider = StateNotifierProvider<
    LocalDataModelUpdaterNotifier, AsyncValue<CartListData>>((ref) {
  return LocalDataModelUpdaterNotifier();
});

final myOrdersTabBarIndexProvider =
    StateNotifierProvider<MyOrdersTabBarIndexNotifier, int>((ref) {
  return MyOrdersTabBarIndexNotifier();
});

final prodVarIDPVBottomSheetProvider =
    StateNotifierProvider<ProdVarIDPreViewBottomSheetNotifier, String>((ref) {
  return ProdVarIDPreViewBottomSheetNotifier();
});

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, void>((ref) {
  return NavigationNotifier();
});

final checkoutProductIDProvider =
    StateNotifierProvider<CheckoutProductIDNotifier, String>((ref) {
  return CheckoutProductIDNotifier();
});

final checkoutSinglePreviewProvider = StateNotifierProvider<
    CheckoutSinglePreviewNotifier, AsyncValue<CheckoutProductData>>((ref) {
  return CheckoutSinglePreviewNotifier();
});

final checkoutMultiplePreviewProvider = StateNotifierProvider<
    CheckoutMultiplePreviewNotifier, AsyncValue<CheckoutProduct>>((ref) {
  return CheckoutMultiplePreviewNotifier();
});

final checkoutPricePreviewProvider = StateNotifierProvider<
    CheckoutPricePreviewNotifier, AsyncValue<CheckoutProductPricesData>>((ref) {
  return CheckoutPricePreviewNotifier();
});

final checkoutQuantityProvider =
    StateNotifierProvider<CheckoutQuantityNotifier, int>((ref) {
  return CheckoutQuantityNotifier();
});

final checkoutInstructionsStateProvider =
    StateNotifierProvider<CheckoutInstructionsStateNotifier, bool>((ref) {
  return CheckoutInstructionsStateNotifier();
});

final checkoutUserAddressProvider = StateNotifierProvider<
    CheckoutUserAddressNotifier,
    AsyncValue<UserShippingAddressDataSingle>>((ref) {
  return CheckoutUserAddressNotifier();
});

final checkoutUserAddressListProvider = StateNotifierProvider<
    CheckoutUserAddressListNotifier, AsyncValue<UserShippingAddress>>((ref) {
  return CheckoutUserAddressListNotifier();
});

final homeScrollingStateProvider =
    StateNotifierProvider<HomeScrollingStateNotifier, bool>((ref) {
  return HomeScrollingStateNotifier();
});

// final regionListProvider =
//     StateNotifierProvider<RegionListNotifier, AsyncValue<List<dynamic>>>((ref) {
//   return RegionListNotifier();
// });

// final cityListProvider =
//     StateNotifierProvider<CityListNotifier, AsyncValue<List<dynamic>>>((ref) {
//   return CityListNotifier();
// });

// final districtListProvider =
//     StateNotifierProvider<DistrictListNotifier, AsyncValue<List<dynamic>>>(
//         (ref) {
//   return DistrictListNotifier();
// });

final labelCategoryProvider =
    StateNotifierProvider<LabelCategoryNotifier, List<Map<String, String>>>(
        (ref) {
  return LabelCategoryNotifier();
});

final manageShippingAddProvider =
    StateNotifierProvider<ManageShippingAddressNotifier, AsyncValue<dynamic>>(
        (ref) {
  return ManageShippingAddressNotifier();
});

final manageOrderShippingAddProvider = StateNotifierProvider<
    ManageOrderShippingAddressNotifier, AsyncValue<dynamic>>((ref) {
  return ManageOrderShippingAddressNotifier();
});

final placeOrderProvider =
    StateNotifierProvider<PlaceOrderNotifier, AsyncValue<String>>((ref) {
  return PlaceOrderNotifier();
});

final dNameMyOrdersBadgeCountsProvider = StateNotifierProvider<
    DisplayNameMyOrdersBadgeCountsNotifier,
    AsyncValue<DisplayNameMyOrdersBadgeCounts>>((ref) {
  return DisplayNameMyOrdersBadgeCountsNotifier();
});

final myOrderToPayListDataProvider = StateNotifierProvider<
    MyOrdersToPayListDataNotifier, AsyncValue<MyOrdersToPayListData>>((ref) {
  return MyOrdersToPayListDataNotifier();
});

final deliveryDetailsDataProvider = StateNotifierProvider<
    DeliveryDetailsDataNotifier, AsyncValue<ProductDeliveryDetailsData>>((ref) {
  return DeliveryDetailsDataNotifier();
});

final deliveryProgressDetailsDataProvider = StateNotifierProvider<
    DeliveryProgressDetailsDataNotifier,
    AsyncValue<ProductListDeliveryProgressDetailsData>>((ref) {
  return DeliveryProgressDetailsDataNotifier();
});

final orderDetailsDataProvider = StateNotifierProvider<OrderDetailsDataNotifier,
    AsyncValue<OrderDetailsData>>((ref) {
  return OrderDetailsDataNotifier();
});

final orderDetailsOrderSummaryDataProvider = StateNotifierProvider<
    OrderDetailsOrderSummaryDataNotifier,
    AsyncValue<List<Map<String, dynamic>>>>((ref) {
  return OrderDetailsOrderSummaryDataNotifier();
});

final myOrderToShipListDataProvider = StateNotifierProvider<
    MyOrdersToShipListDataNotifier, AsyncValue<MyOrdersToShipListData>>((ref) {
  return MyOrdersToShipListDataNotifier();
});

final myOrderToReceiveListDataProvider = StateNotifierProvider<
    MyOrdersToReceiveListDataNotifier,
    AsyncValue<MyOrdersToReceiveListData>>((ref) {
  return MyOrdersToReceiveListDataNotifier();
});

final myOrderAllPurchasedListDataProvider = StateNotifierProvider<
    MyOrdersAllPurchasedListDataNotifier,
    AsyncValue<MyOrdersAllPurchasedListData>>((ref) {
  return MyOrdersAllPurchasedListDataNotifier();
});

final myOrderReturnRefListDataProvider = StateNotifierProvider<
    MyOrdersReturnRefListDataNotifier,
    AsyncValue<MyOrdersReturnRefListData>>((ref) {
  return MyOrdersReturnRefListDataNotifier();
});

final myOrderCancellationListDataProvider = StateNotifierProvider<
    MyOrdersCancellationListDataNotifier,
    AsyncValue<MyOrdersCancellationListData>>((ref) {
  return MyOrdersCancellationListDataNotifier();
});

final cancelDetailsDataProvider = StateNotifierProvider<CancelDetailsDataNotifier,
    AsyncValue<CancelDetailsData>>((ref) {
  return CancelDetailsDataNotifier();
});

final isAddAddressStateProvider =
    StateNotifierProvider<IsAddAddressNotifier, bool>((ref) {
  return IsAddAddressNotifier();
});

final orderCancellationOptListProvider = StateNotifierProvider<
    OrderCancellationOptListNotifier, AsyncValue<dynamic>>((ref) {
  return OrderCancellationOptListNotifier();
});

final cancelOrderProvider = StateNotifierProvider<
    CancelOrderNotifier, AsyncValue<dynamic>>((ref) {
  return CancelOrderNotifier();
});

/* END OF SINGLE PRODUCT PREVIEW PROVIDER */ // I have no time to organize the description of the code

final listImgDatawSubProvider =
    StateNotifierProvider<ImageDataWithSubNotifier, List<ImageDatawSub>>((ref) {
  return ImageDataWithSubNotifier();
});

final singleProdVarImgProvider =
    StateNotifierProvider<ProductSingleVariantImageNotifier, Uint8List>((ref) {
  return ProductSingleVariantImageNotifier();
});

final prodVarSellingPriceProvider = StateNotifierProvider<
    ProductPricesDataNotifier,
    AsyncValue<List<ProductVariantPreviewData>>>((ref) {
  return ProductPricesDataNotifier();
});

final prodVarOrigPriceProvider =
    StateNotifierProvider<ProductOrigPriceNotifier, double>((ref) {
  return ProductOrigPriceNotifier();
});

final prodVarSpecsHeaderProvider =
    StateNotifierProvider<ProductSpecsHeaderNotifier, List<String>>((ref) {
  return ProductSpecsHeaderNotifier();
});

final prodVarSpecsListProvider = StateNotifierProvider<ProductListSpecsNotifier,
    AsyncValue<List<ProductVarClientKeyValue>>>((ref) {
  return ProductListSpecsNotifier();
});

final prodVarSpecsValueProvider =
    StateNotifierProvider<ProductSpecsNotifier, String>((ref) {
  return ProductSpecsNotifier();
});

final prodVarStocksProvider =
    StateNotifierProvider<ProductAvailableQuantityNotifier, int>((ref) {
  return ProductAvailableQuantityNotifier();
});

final subjForEditAddDataProvider = StateNotifierProvider<
    SubjectForEditAddressDataNotifier,
    AsyncValue<SubjectForEditAddressData>>((ref) {
  return SubjectForEditAddressDataNotifier();
});

final myOrdersDataProvider =
    StateNotifierProvider<MyOrdersDataNotifier, Map<String, dynamic>>((ref) {
  return MyOrdersDataNotifier();
});

final _dioHelper = ApiHelperDio();

// final dioHelperProvider = Provider((ref) => ApiHelperDio()); // decided not to use

@riverpod
Future<ProductAdminData> retAdminProd(
    Ref ref, String endPoint, String userModifier, String functionKey) async {
  // require to run if there's modification: dart run build_runner build --delete-conflicting-outputs
  // Using package:dio, we fetch a random addProduct from the Bored API.
  final response = await _dioHelper.retrieveAdminProductsData(
      endPoint, "", "", "", userModifier, functionKey);

  developer.log('Runtype: ${response[0]['json_data']}');

  // Using dart:convert, we then decode the JSON payload into a Map data structure.
  // final json = jsonDecode(response) as Map<String, dynamic>;

  // Finally, we convert the Map into an Activity instance.
  // return ProductAdminData.fromJson(
  //     json); // I need to extract the data from JSON

  // developer.log(
  //     'JSON data: ${((jsonDecode(response[0]["json_data"])[0]["nested_p_img_key"][0]) ?? {})}'); // navigate through nested json data

  final reparsedResponse = jsonDecode(response[0]["json_data"]);

  final List responseListData = reparsedResponse
      .map((json) => json as Map<String, dynamic>)
      .toList() as List<dynamic>;

  final List<ProductData> jsonListData = responseListData
      .map((data) => ProductData.fromJson(data as Map<String, dynamic>))
      .toList();

  // developer.log('JSON data: ${jsonEncode(jsonListData)}');

  return ProductAdminData(productData: jsonListData);
}

@riverpod
Future<ProductClientDashboardData> retClientDashbProd(
    Ref ref, String endPoint, String prodCatName, String functionKey) async {
  // for reference purposes only
  // require to run if there's modification: dart run build_runner build --delete-conflicting-outputs
  // Using package:dio, we fetch a random addProduct from the Bored API.
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

  // developer.log('Runtype: ${response.runtimeType}');

  final List responseListData = response
      .map((json) => json as Map<String, dynamic>)
      .toList() as List<dynamic>;

  final List<ProductDashboardData> jsonListData = responseListData
      .map(
          (data) => ProductDashboardData.fromJson(data as Map<String, dynamic>))
      .toList();

  return ProductClientDashboardData(productData: jsonListData);
}

@riverpod
Future<ProductClientPreviewData> retClientProdPreview(
    Ref ref, String endPoint, String prodId, String functionKey) async {
  // for reference purposes only
  // require to run if there's modification: dart run build_runner build --delete-conflicting-outputs
  // Using package:dio, we fetch a random addProduct from the Bored API.
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

  // developer.log('Runtype: ${response.runtimeType}');

  final List responseListData = response
      .map((json) => json as Map<String, dynamic>)
      .toList() as List<dynamic>;

  final List<ProductPreviewData> jsonListData = responseListData
      .map((data) => ProductPreviewData.fromJson(data as Map<String, dynamic>))
      .toList();

  return ProductClientPreviewData(productData: jsonListData);
}

@riverpod
Future<ProductKeyNames> retrieveProductKey(
    Ref ref, String endPoint, String functionKey) async {
  // require to run if there's modification: dart run build_runner build --delete-conflicting-outputs
  // Using package:dio, we fetch a random addProduct from the Bored API.
  final response = await _dioHelper.retrieveAdminProductsData(
      endPoint, "", "", "", "", functionKey);

  // Using dart:convert, we then decode the JSON payload into a Map data structure.
  // final json = jsonDecode(response) as Map<String, dynamic>;
  // Finally, we convert the Map into an Activity instance.
  // developer.log('JSON PROVIDER: ${response.map((data) => data).toList()}');

  final List responseListData =
      response.map((json) => json).toList() as List<dynamic>;
  final List<ProductKeyName> jsonListData = responseListData
      .map((data) => ProductKeyName.fromJson(data as Map<String, dynamic>))
      .toList();

  return ProductKeyNames(productKeyName: jsonListData);
}

@riverpod
Future<ProductKeyNames> retrieveProductVarKey(
    Ref ref, String endPoint, String functionKey) async {
  // require to run if there's modification: dart run build_runner build --delete-conflicting-outputs
  // Using package:dio, we fetch a random addProduct from the Bored API.
  final response = await _dioHelper.retrieveAdminProductsData(
      endPoint, "", "", "", "", functionKey);

  // Using dart:convert, we then decode the JSON payload into a Map data structure.
  // final json = jsonDecode(response) as Map<String, dynamic>;
  // Finally, we convert the Map into an Activity instance.
  // developer.log('JSON PROVIDER: ${response.map((data) => data).toList()}');

  final List responseListData =
      response.map((json) => json).toList() as List<dynamic>;
  final List<ProductVarKeyName> jsonListData = responseListData
      .map((data) => ProductVarKeyName.fromJson(data as Map<String, dynamic>))
      .toList();

  return ProductKeyNames(productVarKeyName: jsonListData);
}

@riverpod
Future<List> retrieveOptImg(Ref ref, String endPoint) async {
  // require to run if there's modification: dart run build_runner build --delete-conflicting-outputs
  // for testing purposes only
  return await _dioHelper.retrieveLss2CFrontID(endPoint);
}
