import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// App Name and Version Constants
const String kAppName = '7pets';
const String kAppVersion = '1.0.0';
const String kAppVersionCode = '1';
const String kAppVersionName = '1.0.0';
const String kAppPackageName = 'tiqnia.7pets.app';

/// App Constants
const kDefaultLanguage = 'en';
const kDefaultCountry = 'US';
const kDefaultLocale = Locale(kDefaultLanguage, kDefaultCountry);
const kDefaultPadding = 18.0;
const kDefaultAppTransitionAnimation = Transition.fade;
String kAppLanguageCode = '';
bool kFirstTime = true;
String kUserId = '';
String kUserName = '';
String kBaseImageUrl =
    'https://tiqnia.com/Apps/b2b_partenership/laravel/public/';

/// Animation Constants
const kDefaultTransitionDuration = Duration(milliseconds: 300);
const kDefaultAnimationDuration = Duration(milliseconds: 300);
const kSplashAnimationDuration = Duration(seconds: 1, milliseconds: 300);
const kSplashDuration = Duration(seconds: 2, milliseconds: 500);

/// Notification constants
const String kNotificationChannelKey = '7pets_channel';
const String kNotificationChannelName = '7pets Notifications';
const String kNotificationChannelDescription = 'Notification channel for 7pets';
const String kNotificationGroupKey = '7pets_group';
const String kNotificationGroupAlertSummary = 'You have notifications';
