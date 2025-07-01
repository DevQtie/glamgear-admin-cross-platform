import 'package:web/web.dart';

class CookieManager { // discontinued
  static void addToCookie(String key, dynamic value) {
    // 2592000 sec = 30 days.
    // 1296000 sec = 15 days.
    int sevenDays = 604800; // 7 days.
    //int oneDay = 86400; // 1 day.
    final isSecure = window.location.protocol == 'https:';
    final secureFlag = isSecure ? '; Secure' : '';
    document.cookie = "$key=$value; max-age=$sevenDays; path=/$secureFlag; SameSite=Lax;";
  }

  static bool? getCookieBool(String key) {
    String? cookieValue = getCookie(key); // Get the cookie value as a string

    if (cookieValue == null) {
      return null; // Handle the case where the cookie is not set
    }

    // Convert the string to a boolean (case-insensitive)
    if (cookieValue.toLowerCase() == 'true') {
      return true;
    } else if (cookieValue.toLowerCase() == 'false') {
      return false;
    } else {
      return null; // Or handle invalid cookie values as you see fit.
    }
  }

  static dynamic getCookie(String key) {
    dynamic cookies = document.cookie;
    if (cookies == null || cookies.isEmpty) {
      return null;
    }

    List<dynamic> cookieList = cookies.split(';');
    for (dynamic cookie in cookieList) {
      List<dynamic> parts = cookie.trim().split('=');
      if (parts.length == 2 && parts[0] == key) {
        return parts[1];
      }
    }
    return null;
  }

  static void removeCookie(String key) {
    final isSecure = window.location.protocol == 'https:';
    final secureFlag = isSecure ? '; Secure; SameSite=None' : '';
    document.cookie = '$key=; Max-Age=0; path=/$secureFlag';
  }

  static bool isCookiePresent(String key) {
    String? cookieValue = getCookie(key); // Get the cookie value as a string
    if (cookieValue == null) {
      return false; // Cookie is not present
    } else {
      return true; // Cookie is present
    }
  }
}
