import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../manual_model/user_model.dart';
import 'dart:developer' as developer;

class SecureStorage {
  final storage = const FlutterSecureStorage();

  /* Should be used for sensitive information: [STATUS] Subject for reevaluation */

  Future<void> writeUsername(String userName, String password) async {
    try {
      await storage.write(
          key: 'mobile_no',
          value: json.encode(userName)); //json.encode(data['mobile_no']));
    } catch (e) {
      developer.log('Auth_service: ', error: e);
    }
  }

  Future<User?> getUser() async {
    final userJson = await storage.read(key: 'mobile_no');
    developer.log('Retrieved userJson from storage: $userJson');
    if (userJson != null) {
      // Assuming userJson is a JSON string of a user object
      // Otherwise, if it's just a plain username, return a User instance with just the username
      try {
        final userMap = json.decode(userJson) as Map<String, dynamic>;
        developer.log('Decoded userMap: $userMap');
        return User.fromJson(userMap);
      } catch (e) {
        developer.log('Auth_service getUser error: ', error: e);
        return null;
      }
    }
    return null;
  }

  Future<bool?> logout() async {
    await storage.delete(key: 'mobile_no');
    final userJson = await storage.read(key: 'mobile_no');
    bool? isNullUserCreds = userJson == null;
    return isNullUserCreds;
  }
}
