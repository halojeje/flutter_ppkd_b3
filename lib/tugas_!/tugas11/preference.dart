import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHelper {
  static const String keyIsLogin = 'is_login';
  static const String keyUserEmail = 'user_email';

  // Simpan Session Login
  static Future<void> saveLoginSession(String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyIsLogin, true);
    await prefs.setString(keyUserEmail, email);
  }

  // Cek Status Login
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyIsLogin) ?? false;
  }

  // Ambil Email yang Sedang Login
  static Future<String?> getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyUserEmail);
  }

  // Clear Session (Untuk Logout)
  static Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
