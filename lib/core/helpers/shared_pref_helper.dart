import 'dart:convert';
import 'package:core_fit/core/helpers/constants.dart';
import 'package:core_fit/features/auth/login/data/models/login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// حفظ بيانات المستخدم
  Future<void> saveUserData(LoginResponse user) async {
    String userSavedData = json.encode(user.data!.user!.toJson()); // حفظ بيانات المستخدم فقط
    try {
      await _prefs.setString(SharedPrefKeys.user, userSavedData);
      await saveUserId(user.data!.user!.id.toString());
      await saveUserToken(user.data!.token ?? "");
      
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveUserId(String userId) async {
    try {
      await _prefs.setString(SharedPrefKeys.userId, userId);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveUserToken(String userToken) async {
    try {
      await _prefs.setString(SharedPrefKeys.userToken, userToken);
    } catch (e) {
      rethrow;
    }
  }

  /// استرجاع بيانات المستخدم
  User? getUserData() {
    String? userSavedData = _prefs.getString(SharedPrefKeys.user);
    if (userSavedData != null) {
      Map<String, dynamic> userData = json.decode(userSavedData);
      return User.fromJson(userData);
    }
    return null;
  }

  String getUserToken() {
    return _prefs.getString(SharedPrefKeys.userToken) ?? "";
  }

  String getUserId() {
    return _prefs.getString(SharedPrefKeys.userId) ?? "";
  }

  /// حذف جميع البيانات
  Future<bool> clearSharedData() async {
    return await _prefs.clear();
  }
  bool isUserLoggedIn() {
    String? token = _prefs.getString(SharedPrefKeys.userToken);
    return token != null && token.isNotEmpty;
  }

  
}
