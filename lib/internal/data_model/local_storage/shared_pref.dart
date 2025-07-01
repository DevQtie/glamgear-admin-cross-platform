import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class DataModel with ChangeNotifier {
  late SharedPreferences _prefs;

  final _adminIDKey = 'adminID';
  final _fullnameKey = 'fullname';
  final _adminRoleKey = 'adminRole';
  final _productIDKey = 'productID';
  final _previewMethodKey = 'previewMethod';
  final _productVarIDKey = 'productVarID';
  final _idCardIDKey = 'identificationCard';
  final _accountIDKey = 'accountCredentials';
  final _recentlySearchedKey = 'recentlySearched';
  final _specsPairKey = 'specificationPair';
  final _varPropertiesKey = 'variantProperties';
  final _promoTagKey = 'promoTag';
  final _checkoutInitOnlyOnceKey = 'checkoutInitOnlyOnce';
  final _checkoutInstructionOnlyOnceKey = 'checkoutInstructionOnlyOnce';

  /* Should not be used for sensitive information: [STATUS] Subject for reevaluation */

  DataModel() {
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    notifyListeners();
  }

  // Utility function to normalize text (remove excess spaces and lower case it)
  String _normalizeText(String text) {
    return text
        .trim() // Remove leading and trailing spaces
        .replaceAll(
            RegExp(r'\s+'), ' ') // Replace multiple spaces with a single space
        .toLowerCase(); // Convert to lowercase for case-insensitive comparison
  }

  //--------------------------------------------DIVISION----------------------------------------//

  Future<void> saveAdminID(String adminID) async {
    await _prefs.setString(_adminIDKey, adminID);
    notifyListeners();
  }

  Future<void> saveFullname(String fullname) async {
    await _prefs.setString(_fullnameKey, fullname);
    notifyListeners();
  }

  Future<void> saveAdminRole(String adminRole) async {
    await _prefs.setString(_adminRoleKey, adminRole);
    notifyListeners();
  }

  Future<void> saveProductID(int id) async {
    await _prefs.setInt(_productIDKey, id);
    notifyListeners();
  }

  Future<void> saveProductStringID(String id) async {
    await _prefs.setString(_productIDKey, id);
    notifyListeners();
  }

  Future<void> saveProductVarStringID(String id) async {
    await _prefs.setString(_productVarIDKey, id);
    notifyListeners();
  }

  Future<void> savePreviewMethod(String method) async {
    await _prefs.setString(_previewMethodKey, method);
    notifyListeners();
  }

  Future<void> saveIdentificationCardID(int id) async {
    await _prefs.setInt(_idCardIDKey, id);
    notifyListeners();
  }

  Future<void> saveAccountCredentialsForAccountRecovery(String data) async {
    await _prefs.setString(_accountIDKey, data);
    notifyListeners();
  }

  Future<void> toggleTutorialCoachMarkState({bool state = true}) async {
    await _prefs.setBool(_checkoutInitOnlyOnceKey, state);
    notifyListeners();
  }

  Future<void> toggleCheckoutInstructionsState({bool state = true}) async {
    await _prefs.setBool(_checkoutInstructionOnlyOnceKey, state);
    notifyListeners();
  }

  Future<void> saveRecentlySearched(String data) async {
    List<String> storedHistory =
        _prefs.getStringList(_recentlySearchedKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Check if the searchData already exists in the history
    bool exists = history.any((entry) => entry['searchData'] == data);

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    if (exists) {
      // Remove any existing entry that matches the normalized text
      history.removeWhere(
          (entry) => _normalizeText(entry['searchData']!) == normalizedText);

      // Add the new entry with the current date and time
      final newEntry = {
        'searchData': normalizedText,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 10) {
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_recentlySearchedKey, updatedHistory);
    }
    if (!exists) {
      // Add new entry with current date and time
      final newEntry = {
        'searchData': data,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 10) {
        developer.log('Get text: ${history.first}');
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_recentlySearchedKey, updatedHistory);
    }
    notifyListeners();
  }

  Future<void> saveSpecsPair(String data) async {
    List<String> storedHistory = _prefs.getStringList(_specsPairKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Check if the specsPair already exists in the history
    bool exists = history.any((entry) => entry['specsPair'] == data);

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    if (exists) {
      // Remove any existing entry that matches the normalized text
      history.removeWhere(
          (entry) => _normalizeText(entry['specsPair']!) == normalizedText);

      // Add the new entry with the current date and time
      final newEntry = {
        'specsPair': normalizedText,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 10) {
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_specsPairKey, updatedHistory);
    }
    if (!exists) {
      // Add new entry with current date and time
      final newEntry = {
        'specsPair': data,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 10) {
        developer.log('Get text: ${history.first}');
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_specsPairKey, updatedHistory);
    }
    notifyListeners();
  }

  Future<void> saveVariantProp(String data) async {
    List<String> storedHistory = _prefs.getStringList(_varPropertiesKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Check if the varProp already exists in the history
    bool exists = history.any((entry) => entry['varProp'] == data);

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    if (exists) {
      // Remove any existing entry that matches the normalized text
      history.removeWhere(
          (entry) => _normalizeText(entry['varProp']!) == normalizedText);

      // Add the new entry with the current date and time
      final newEntry = {
        'varProp': normalizedText,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 1) {
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_varPropertiesKey, updatedHistory);
    }
    if (!exists) {
      // Add new entry with current date and time
      final newEntry = {
        'varProp': data,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 1) {
        developer.log('Get text: ${history.first}');
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_varPropertiesKey, updatedHistory);
    }
    notifyListeners();
  }

  Future<void> savePromoTag(String data) async {
    List<String> storedHistory = _prefs.getStringList(_promoTagKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Check if the promoTag already exists in the history
    bool exists = history.any((entry) => entry['promoTag'] == data);

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    if (exists) {
      // Remove any existing entry that matches the normalized text
      history.removeWhere(
          (entry) => _normalizeText(entry['promoTag']!) == normalizedText);

      // Add the new entry with the current date and time
      final newEntry = {
        'promoTag': normalizedText,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 5) {
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_promoTagKey, updatedHistory);
    }
    if (!exists) {
      // Add new entry with current date and time
      final newEntry = {
        'promoTag': data,
        'dateTime': DateTime.now().toIso8601String()
      };

      history.add(newEntry);

      // If the history exceeds 10 entries, remove the oldest one
      if (history.length > 5) {
        developer.log('Get text: ${history.first}');
        history.removeAt(0);
      }

      // Serialize history back to JSON strings
      List<String> updatedHistory = history.map((entry) {
        return jsonEncode(entry);
      }).toList();

      // Save updated history in SharedPreferences
      await _prefs.setStringList(_promoTagKey, updatedHistory);
    }
    notifyListeners();
  }

  //--------------------------------------------DIVISION----------------------------------------//

  Future<void> removeEachRecentlySearched(String data) async {
    List<String> storedHistory =
        _prefs.getStringList(_recentlySearchedKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    // Remove any existing entry that matches the normalized text
    history.removeWhere(
        (entry) => _normalizeText(entry['searchData']!) == normalizedText);

    // Serialize history back to JSON strings
    List<String> updatedHistory = history.map((entry) {
      return jsonEncode(entry);
    }).toList();

    // Save updated history in SharedPreferences
    await _prefs.setStringList(_recentlySearchedKey, updatedHistory);
  }

  Future<void> removeEachSpecsPair(String data) async {
    List<String> storedHistory = _prefs.getStringList(_specsPairKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    // Remove any existing entry that matches the normalized text
    history.removeWhere(
        (entry) => _normalizeText(entry['specsPair']!) == normalizedText);

    // Serialize history back to JSON strings
    List<String> updatedHistory = history.map((entry) {
      return jsonEncode(entry);
    }).toList();

    // Save updated history in SharedPreferences
    await _prefs.setStringList(_specsPairKey, updatedHistory);
  }

  Future<void> removeEachVarProp(String data) async {
    List<String> storedHistory = _prefs.getStringList(_varPropertiesKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    // Remove any existing entry that matches the normalized text
    history.removeWhere(
        (entry) => _normalizeText(entry['varProp']!) == normalizedText);

    // Serialize history back to JSON strings
    List<String> updatedHistory = history.map((entry) {
      return jsonEncode(entry);
    }).toList();

    // Save updated history in SharedPreferences
    await _prefs.setStringList(_varPropertiesKey, updatedHistory);
  }

  Future<void> removeEachPromoTag(String data) async {
    List<String> storedHistory = _prefs.getStringList(_promoTagKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Normalize the incoming search text
    final normalizedText = _normalizeText(data);

    // Remove any existing entry that matches the normalized text
    history.removeWhere(
        (entry) => _normalizeText(entry['promoTag']!) == normalizedText);

    // Serialize history back to JSON strings
    List<String> updatedHistory = history.map((entry) {
      return jsonEncode(entry);
    }).toList();

    // Save updated history in SharedPreferences
    await _prefs.setStringList(_promoTagKey, updatedHistory);
  }

  //--------------------------------------------DIVISION----------------------------------------//

  Future<String?> getAdminID() async {
    return _prefs.getString(_adminIDKey);
  }

  Future<String?> getFullname() async {
    return _prefs.getString(_fullnameKey);
  }
  
  Future<String?> getAdminRole() async {
    return _prefs.getString(_adminRoleKey);
  }

  Future<int?> getProductID() async {
    return _prefs.getInt(_productIDKey);
  }

  Future<String?> getProductStringID() async {
    return _prefs.getString(_productIDKey);
  }

  Future<String?> getProductVarStringID() async {
    return _prefs.getString(_productVarIDKey);
  }

  Future<String?> getPreviewMethod() async {
    return _prefs.getString(_previewMethodKey);
  }

  Future<String?> getAccountCredentials() async {
    return _prefs.getString(_accountIDKey);
  }

  Future<bool?> getTutorialCoachMarkState() async {
    return _prefs.getBool(_checkoutInitOnlyOnceKey);
  }

  bool? getCheckoutInstructionsState() {
    return _prefs.getBool(_checkoutInstructionOnlyOnceKey);
  }

  Future<bool?> removeAccountCredentials() async {
    return await _prefs.remove(_accountIDKey);
  }

  Future<bool?> removeAdminID() async {
    return await _prefs.remove(_adminIDKey);
  }

  Future<bool?> removeFullname() async {
    return await _prefs.remove(_fullnameKey);
  }

  Future<bool?> removeAdminRole() async {
    return await _prefs.remove(_adminRoleKey);
  }

  Future<List<Map<String, String>>> getSearchHistory(
      {bool ascending = true}) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> storedHistory =
        prefs.getStringList(_recentlySearchedKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    // return storedHistory.map((entry) {
    //   return Map<String, String>.from(jsonDecode(entry));
    // }).toList();// it produces ascending output (default)

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Sort history based on DateTime
    history.sort((a, b) {
      DateTime dateA = DateTime.parse(a['dateTime']!);
      DateTime dateB = DateTime.parse(b['dateTime']!);

      // Ascending: older entries first, descending: recent entries first
      return ascending ? dateA.compareTo(dateB) : dateB.compareTo(dateA);
    });

    return history;
  }

  Future<List<Map<String, String>>> getSpecsPair(
      {bool ascending = true}) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> storedHistory = prefs.getStringList(_specsPairKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    // return storedHistory.map((entry) {
    //   return Map<String, String>.from(jsonDecode(entry));
    // }).toList();// it produces ascending output (default)

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Sort history based on DateTime
    history.sort((a, b) {
      DateTime dateA = DateTime.parse(a['dateTime']!);
      DateTime dateB = DateTime.parse(b['dateTime']!);

      // Ascending: older entries first, descending: recent entries first
      return ascending ? dateA.compareTo(dateB) : dateB.compareTo(dateA);
    });

    return history;
  }

  Future<List<Map<String, String>>> getVarProperties(
      {bool ascending = true}) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> storedHistory = prefs.getStringList(_varPropertiesKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    // return storedHistory.map((entry) {
    //   return Map<String, String>.from(jsonDecode(entry));
    // }).toList();// it produces ascending output (default)

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Sort history based on DateTime
    history.sort((a, b) {
      DateTime dateA = DateTime.parse(a['dateTime']!);
      DateTime dateB = DateTime.parse(b['dateTime']!);

      // Ascending: older entries first, descending: recent entries first
      return ascending ? dateA.compareTo(dateB) : dateB.compareTo(dateA);
    });

    return history;
  }

  Future<List<Map<String, String>>> getPromotionalTags(
      {bool ascending = true}) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> storedHistory = prefs.getStringList(_promoTagKey) ?? [];

    // Deserialize stored history from JSON strings to a list of maps
    // return storedHistory.map((entry) {
    //   return Map<String, String>.from(jsonDecode(entry));
    // }).toList();// it produces ascending output (default)

    // Deserialize stored history from JSON strings to a list of maps
    List<Map<String, String>> history = storedHistory.map((entry) {
      return Map<String, String>.from(jsonDecode(entry));
    }).toList();

    // Sort history based on DateTime
    history.sort((a, b) {
      DateTime dateA = DateTime.parse(a['dateTime']!);
      DateTime dateB = DateTime.parse(b['dateTime']!);

      // Ascending: older entries first, descending: recent entries first
      return ascending ? dateA.compareTo(dateB) : dateB.compareTo(dateA);
    });

    return history;
  }

  Future<int?> getIdentificationCardID() async {
    return _prefs.getInt(_idCardIDKey);
  }

  // Future<void> saveTheme(bool isDarkMode) async {
  //   await _prefs.setBool('theme', isDarkMode);
  //   notifyListeners();
  // }

  // Future<bool?> getTheme() async {
  //   return _prefs.getBool('theme');
  // }
}
