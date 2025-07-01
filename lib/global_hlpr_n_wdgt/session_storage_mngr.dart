import 'package:web/web.dart';

class SessionStorageManager { // subject for discontinuation due to the challenges of having it run in production
  /// Set a sessionStorage item
  static void setSessionStorage(String key, dynamic value) {
    window.sessionStorage.setItem(key, value);
  }

  static bool? getSessionStorageBool(String key) {
    String? sessionStorageValue =
        getSessionStorage(key); // Get the session storage value as a string

    if (sessionStorageValue == null) {
      return null; // Handle the case where the session storage is not set
    }

    // Convert the string to a boolean (case-insensitive)
    if (sessionStorageValue.toLowerCase() == 'true') {
      return true;
    } else if (sessionStorageValue.toLowerCase() == 'false') {
      return false;
    } else {
      return null; // Or handle invalid session storage values as you see fit.
    }
  }

  /// Get a sessionStorage item
  static dynamic getSessionStorage(String key) {
    return window.sessionStorage.getItem(key);
  }

  /// Check the existence of a certain session storage data
  static bool isSessionStoragePresent(String key) {
    final sessionStorageValue = getSessionStorage(key);
    if (sessionStorageValue == null) {
      return false; // Cookie is not present
    } else {
      return true; // Cookie is present
    }
  }

  /// Remove a sessionStorage item
  static void removeSessionStorage(String key) {
    window.sessionStorage.removeItem(key);
  }

  /// Clear all sessionStorage
  static void clearSessionStorage() {
    window.sessionStorage.clear();
  }
}
