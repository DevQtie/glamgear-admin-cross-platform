import 'package:universal_html/html.dart' as html;

class CookieManager {
  static void addToCookie(String key, dynamic value) {
    // 2592000 sec = 30 days.
    // 1296000 sec = 15 days.
    // 604800 sec = 7 days.
    int oneDay = 86400; // 1 day.
    html.window.document.cookie = "$key=$value; max-age=$oneDay; path=/;";
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
    dynamic cookies = html.window.document.cookie;
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
}

// import 'package:universal_html/html.dart' as html; // not working with >= 3.27.2 Flutter

// class CookieManager {

//   static addToCookie(String key, String value) {
//      // 2592000 sec = 30 days.
//      html.document.cookie = "$key=$value; max-age=2592000; path=/;";
//   }

//   static String getCookie(String key) {

//     String? cookies = html.document.cookie;
//     List<dynamic> listValues = cookies!.isNotEmpty ? cookies.split(";") : List();
//     String matchVal = "";
//     for (int i = 0; i < listValues.length; i++) {
//       List<String> map = listValues[i].split("=");
//       String _key = map[0].trim();
//       String _val = map[1].trim();
//       if (key == _key) {
//         matchVal = _val;
//         break;
//       }
//     }
//     return matchVal;
//   }
// }
