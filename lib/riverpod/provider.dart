import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/api_main/api_helper_dio.dart';
import 'package:glamgear/internal/data_model/freezed/admin_data.dart';
import 'package:glamgear/internal/data_model/freezed/image_data.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_admin_data.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_client_data.dart';
import 'package:glamgear/internal/data_model/local_storage/shared_pref.dart';
import 'package:glamgear/riverpod/state_notifier/state_ntfier_clsses.dart';
import 'dart:developer' as developer;

// Necessary for code-generation to work
// part 'provider.g.dart'; // If prefer to use code generation using: dart run build_runner build

/// This will create a provider named `retrieveProducts`
/// which will cache the result of this function.

final sharedPrefProvider = ChangeNotifierProvider<DataModel>(
  (ref) => DataModel(),
);

final sharedPrefFutureProvider = FutureProvider<DataModel>(
  (ref) => DataModel(),
);

/* START OF SINGLE PRODUCT PREVIEW PROVIDER */

final regStateNotifierProvider =
    StateNotifierProvider<RegStateNotifier, bool>((ref) {
  return RegStateNotifier();
});

final dashboardBottomAppBarIndexProvider =
    StateNotifierProvider<DashboardBottomAppBarIndexNotifier, int>((ref) {
  return DashboardBottomAppBarIndexNotifier();
});

final checkButtonStateProvider =
    StateNotifierProvider<ButtonStateNotifier, bool>((ref) {
  return ButtonStateNotifier();
});

final accessCodeRequestProvider =
    StateNotifierProvider<AccessCodeRequestNotifier, AsyncValue<String>>((ref) {
  return AccessCodeRequestNotifier();
});

final myOrdersTabBarIndexProvider =
    StateNotifierProvider<MyOrdersTabBarIndexNotifier, int>((ref) {
  return MyOrdersTabBarIndexNotifier();
});

/* END OF SINGLE PRODUCT PREVIEW PROVIDER */ // I have no time to organize the description of the code

final retrieveProductKeyProvider = StateNotifierProvider<
    RetrieveProductVarKeyNotifier, AsyncValue<ProductKeyNames>>((ref) {
  return RetrieveProductVarKeyNotifier();
});

final retrieveProductVarKeyProvider = StateNotifierProvider<
    RetrieveProductVarKeyNotifier, AsyncValue<ProductKeyNames>>((ref) {
  return RetrieveProductVarKeyNotifier();
});

final signInUsingUNPasswordProvider =
    StateNotifierProvider<SignInUsingUNPasswordNotifier, AsyncValue<AdminData>>(
        (ref) {
  return SignInUsingUNPasswordNotifier();
});

final logAdminWebAccessProvider =
    StateNotifierProvider<LogAdminWebAccessNotifier, AsyncValue<dynamic>>(
        (ref) {
  return LogAdminWebAccessNotifier();
});

final manageDevicePropertiesProvider = 
    StateNotifierProvider<ManageDevicePropertiesNotifier, AsyncValue<dynamic>>(
        (ref) {
  return ManageDevicePropertiesNotifier();
});

final manageCodeRequestProvider = 
    StateNotifierProvider<ManageCodeRequestNotifier, AsyncValue<dynamic>>(
        (ref) {
  return ManageCodeRequestNotifier();
});

final processUserRequestProvider = 
    StateNotifierProvider<ProcessUserRequestNotifier, AsyncValue<dynamic>>(
        (ref) {
  return ProcessUserRequestNotifier();
});

final adminIDProvider = 
    StateNotifierProvider<AdminIDNotifier, dynamic>(
        (ref) {
  return AdminIDNotifier();
});

final fullnameProvider = 
    StateNotifierProvider<FullnameNotifier, dynamic>(
        (ref) {
  return FullnameNotifier();
});

final adminRoleProvider = 
    StateNotifierProvider<AdminRoleNotifier, dynamic>(
        (ref) {
  return AdminRoleNotifier();
});