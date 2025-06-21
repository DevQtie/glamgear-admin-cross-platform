import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;
import 'package:flutter/services.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:uuid/uuid.dart';

class DeviceIdHelper {
  String devicePlatform() {
    if (kIsWeb) {
      return 'Web';
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'iOS';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return 'Android';
    } else {
      return 'Unknown';
    }
  }

  Future<bool?> isPhysicalDevice() async {
    var deviceInfo = DeviceInfoPlugin();
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      // import 'dart:io'
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.isPhysicalDevice; // not sure
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      // return AndroidId().getId(); // unique ID on Android
      return androidDeviceInfo.isPhysicalDevice;
    } else {
      return null;
    }
  }

  Future<String?> deviceModel() async {
    var deviceInfo = DeviceInfoPlugin();
    if (kIsWeb) {
      final webAppInfo = await deviceInfo.webBrowserInfo;
      return webAppInfo.vendor;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      // import 'dart:io'
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.model; // not sure
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      // return AndroidId().getId(); // unique ID on Android
      return androidDeviceInfo.model;
    } else {
      return null;
    }
  }

  Future<String?> deviceVersion() async {
    var deviceInfo = DeviceInfoPlugin();
    if (kIsWeb) {
      final webAppInfo = await deviceInfo.webBrowserInfo;
      return webAppInfo.appVersion;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      // import 'dart:io'
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.systemVersion; // not sure
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      // return AndroidId().getId(); // unique ID on Android
      String? deviceVersion = androidDeviceInfo.version.securityPatch ?? 'null';
      return '${androidDeviceInfo.version.release}, SecurityPatch: $deviceVersion';
    }
    return null;
  }

  Future<String?> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (kIsWeb) {
      // final webAppInfo = await deviceInfo.webBrowserInfo;
      // return webAppInfo.hardwareConcurrency.toString();
      return _generateDeviceId();
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      // import 'dart:io'
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      // var androidDeviceInfo = await deviceInfo.androidInfo;
      // // return AndroidId().getId(); // unique ID on Android
      // return androidDeviceInfo.isPhysicalDevice.toString();
      return _initPlatformState();
    }
  }

  Future<String?> _initPlatformState() async {
    String udid;
    try {
      udid = await FlutterUdid
          .udid; // able to handle persistent ID even after reinstall
    } on PlatformException {
      udid = 'Failed to get UDID.';
    }

    return udid;
  }

  String _generateDeviceId() {
    var uuid =
        Uuid(); // web purposes only, it can be persistent based on session of the client
    return uuid.v4(); // random-based, please avoid time-based
  }

  Future<String?> getDeviceId() async {
    return await _getId();
  }
}
