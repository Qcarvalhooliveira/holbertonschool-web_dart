import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    return userMap['id'];
  } catch (e) {
    return 'Error fetching user ID: $e';
  }
}
