import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:trust_task/core/constants/app_constants.dart';
import '/core/network/api_constance.dart';

enum SharedKey { token, language, isDarkMode, userId }

class AppPreferences {
  AppPreferences() {
    init();
  }

  late SharedPreferences sharedPreferences;

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();

    kAppLanguageCode = getAppLanguageCode();
    ApiConstance.token = getToken();
    kUserId = getUserId();
    Get.updateLocale(Locale(kAppLanguageCode));

    await Future.delayed(const Duration(seconds: 1), () {
      log(ApiConstance.token.toString(), name: 'Token');
      log(kAppLanguageCode, name: 'Language Code');
      log(kUserId, name: 'User Id');
    });
  }

  /// Save the Token to the shared preferences
  Future<void> setToken(String token) async {
    ApiConstance.token = token;
    await sharedPreferences.setString(SharedKey.token.toString(), token);
  }

  /// Get the Token from the shared preferences
  String getToken() {
    return sharedPreferences.getString(SharedKey.token.toString()) ?? "";
  }

  /// Remove the Token from the shared preferences
  Future<void> removeToken() async {
    ApiConstance.token = "";
    await sharedPreferences.remove(SharedKey.token.toString());
  }

  /// Save the AppLanguageCode to the shared preferences
  Future<void> setAppLanguageCode(String languageCode) async {
    await sharedPreferences.setString(
      SharedKey.language.toString(),
      languageCode,
    );
  }

  /// Get the AppLanguageCode from the shared preferences
  String getAppLanguageCode() {
    return sharedPreferences.getString(SharedKey.language.toString()) ?? 'en';
  }

  /// Remove the AppLanguageCode from the shared preferences
  Future<void> removeLanguageCode() async {
    await sharedPreferences.remove(SharedKey.language.toString());
  }

  /// save the user id to the shared preferences
  Future<void> setUserId(String userId) async {
    await sharedPreferences.setString(SharedKey.userId.toString(), userId);
  }

  /// get the user id from the shared preferences
  String getUserId() {
    return sharedPreferences.getString(SharedKey.userId.toString()) ?? '';
  }

  /// remove the user id from the shared preferences
  Future<void> removeUserId() async {
    await sharedPreferences.remove(SharedKey.userId.toString());
  }

  /// Clear all the shared preferences
  Future<void> clear() async {
    await sharedPreferences.clear();
  }
}
