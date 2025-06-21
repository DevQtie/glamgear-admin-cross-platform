import 'dart:convert';
import 'dart:developer' as developer;

class User {
  final String userName;
  // Add other fields as necessary
  // final String email;

  User({required this.userName});

  factory User.fromJson(Map<String, dynamic> json) {
    // return User(userName: json['user_name']
    //     // Initialize other fields
    //     // email: json['email'],
    //     );

    try {
      developer.log('Deserializing User from JSON: $json');
      return User(
        userName: json['mobile_no'],
      );
    } catch (e) {
      developer.log('Error deserializing User: $e');
      rethrow; // or handle the error appropriately
    }
  }

  // Convert User instance to JSON map (optional, useful for storing user data)
  Map<String, dynamic> toJson() {
    // return {
    //   'user_name': userName,
    //   // 'email': email,
    // };
    final json = {
      'mobile_no': userName,
      // Add other fields
      // 'email': email,
    };
    developer.log('Serializing User to JSON: $json');
    return json;
  }

  void main() {
    // Sample JSON string
    String jsonString = '{"mobile_no": "admin_user1"}';

    // Deserialize
    Map<String, dynamic> userMap = json.decode(jsonString);
    developer.log('Deserialized Map: $userMap');
    User user = User.fromJson(userMap);
    developer.log('User: ${user.userName}');

    // Serialize
    Map<String, dynamic> serializedUser = user.toJson();
    String serializedUserString = json.encode(serializedUser);
    developer.log('Serialized User String: $serializedUserString');
  } //reserved code for testing
}
