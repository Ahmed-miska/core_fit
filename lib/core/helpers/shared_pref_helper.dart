import 'dart:convert';
import 'package:core_fit/core/helpers/constants.dart';
import 'package:core_fit/core/networking/dio_factory.dart';
import 'package:core_fit/features/auth/login/data/models/login_response.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/weakly_recommendation_response_model.dart';
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

  Future<void> logout() async {
    // Save FCM token before clearing data
    String fcmToken = getFcmToken();

    // Clear all data
    await clearSharedData();

    // Restore FCM token
    if (fcmToken.isNotEmpty) {
      await setFcmToken(fcmToken);
    }

    DioFactory.removeTokenAfterLogout();
  }

  bool isUserLoggedIn() {
    String? token = _prefs.getString(SharedPrefKeys.userToken);
    return token != null && token.isNotEmpty;
  }

  Future<void> setFcmToken(String token) async {
    try {
      await _prefs.setString(SharedPrefKeys.fcmToken, token);
    } catch (e) {
      rethrow;
    }
  }

  String getFcmToken() {
    return _prefs.getString(SharedPrefKeys.fcmToken) ?? "";
  }



  Future<void> saveDietPlan(WeaklyRecommendationResponseModel model) async {
    try {
      final jsonString = json.encode(model.toJson());
      await _prefs.setString(SharedPrefKeys.dietPlan, jsonString);
    } catch (e) {
      rethrow;
    }
  }

  WeaklyRecommendationResponseModel? getDietPlan() {
    try {
      final jsonString = _prefs.getString(SharedPrefKeys.dietPlan);
      if (jsonString == null) return null;

      final jsonMap = json.decode(jsonString);
      return WeaklyRecommendationResponseModel.fromJson(jsonMap);
    } catch (e) {
      return null;
    }
  }

}
