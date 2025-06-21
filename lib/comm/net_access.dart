import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'dart:developer' as developer;

import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';

class NetworkManager {
  List<ConnectivityResult> connectionStatus = [
    ConnectivityResult.none
  ]; // required to be set as public
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Connectivity _connectivity = Connectivity();

  Future<void> checkInternetAvailability() async {
    late List<ConnectivityResult> result;
    // Check network connectivity
    try {
      result = await _connectivity.checkConnectivity();
    } catch (e) {
      // return;
      developer.log('Couldn\'t check connectivity status', error: e);
      result = [ConnectivityResult.none];
    }

    return _updateConnectionStatus(result);
  }

  Future<bool> checkInternetConnectivity() async {
    // reserved method
    try {
      final response = await http
          .get(Uri.parse('https://www.google.com'))
          .timeout(const Duration(seconds: 5));
      if (response.statusCode == 200) {
        // We have internet connection
        return true;
      } else {
        // We don't have internet connection
        return false;
      }
    } catch (e) {
      // We don't have internet connection
      return false;
    }
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    connectionStatus = result;
    developer.log('Connectivity changed: $connectionStatus');
  }

  void regStreamSubscription() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void disposeStreamSubscription() {
    _connectivitySubscription.cancel();
  }

  void showNoInternetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: RetainTextScaleWrapper(
          child: const Text(
            'No Internet Connection',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          ),
        ),
        content: RetainTextScaleWrapper(
            child: const Text(
                'Please check your internet connection and try again.')),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: RetainTextScaleWrapper(child: const Text('OK')),
          ),
        ],
      ),
    );
  }

  void showInternetScaffoldMessenger(BuildContext context) {
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text('A SnackBar has been shown.'),
    //   ),
    // );

    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color.fromARGB(
            116, 66, 66, 66), // Adjust background color as needed
        content: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              GetLogo(
                path: 'assets/icons/glamgear.png',
                size: isSmallScreen ? 50 : 100,
                kIsWeb: kIsWeb,
                isSvgSpecific: false,
              ),
              Expanded(
                child: Wrap(
                  children: [
                    const SizedBox(
                        width: 10.0), // Spacing between logo and text
                    RetainTextScaleWrapper(
                      child: Text(
                        'Please check your internet connection and try again.',
                        style: TextStyle(
                          color: Colors.grey.shade100,
                          letterSpacing: 0.75,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.grey.shade100,
          onPressed: () {
            // Handle dismiss action (optional)
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
