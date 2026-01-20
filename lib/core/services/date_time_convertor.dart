import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class DateTimeConvertor {
  // Outputs a formatted date and time string, e.g., "2023-10-05, 04:30 PM"
  static String formatDateTime(String dateTimeString) {
    if (dateTimeString.isEmpty) {
      return "Invalid Date";
    }
    final dateTime = DateTime.parse(dateTimeString);
    String date = DateFormat('yyyy-MM-dd').format(dateTime);
    if (dateTime == DateTime.now()) {
      date = "Today";
    } else if (dateTime == DateTime.now().subtract(const Duration(days: 1))) {
      date = "Yesterday";
    } else if (dateTime == DateTime.now().add(const Duration(days: 1))) {
      date = "Tomorrow";
    }
    final time = DateFormat('hh:mm a').format(dateTime);

    final formattedDate = "$date, $time";
    return formattedDate;
  }

  // Outputs a formatted date string, e.g., "2023-10-05"
  static String formatDate(String dateTime) {
    if (dateTime.isEmpty) {
      return "Invalid Date";
    }
    final date = DateTime.parse(dateTime);

    String formattedDate = "";

    if (date == DateTime.now()) {
      formattedDate = "Today";
    } else if (date == DateTime.now().subtract(const Duration(days: 1))) {
      formattedDate = "Yesterday";
    } else if (date == DateTime.now().add(const Duration(days: 1))) {
      formattedDate = "Tomorrow";
    } else {
      formattedDate = DateFormat('yyyy-MM-dd').format(date);
    }
    return formattedDate;
  }

  // Outputs a formatted time string, e.g., "04:30 PM"
  static String formatTime(String dateTime) {
    if (dateTime.isEmpty) {
      return "Invalid Time";
    }
    final date = DateTime.parse(dateTime);
    final formattedTime = DateFormat('hh:mm a').format(date);

    return formattedTime;
  }

  // Outputs a formatted time string from a TimeOfDay, e.g., "04:30 PM"
  static String stringToTime(String time) {
    if (time.isEmpty) {
      return "Invalid Time";
    }
    TimeOfDay timeOfDay = TimeOfDay(
      hour: int.parse(time.split(":")[0]),
      minute: int.parse(time.split(":")[1]),
    );

    return timeOfDay.format(Get.context!).toString();
  }

  // Outputs a relative time string, e.g., "2 hours ago"
  static String timeAgo(String dateTime, {String locale = 'en'}) {
    if (dateTime.isEmpty) {
      return "Invalid Date";
    }
    DateTime parsedDate = DateTime.parse(dateTime).add(
      const Duration(hours: 2),
    );

    if (locale == 'ar') {
      timeago.setLocaleMessages('ar', timeago.ArMessages());
    }

    return timeago.format(parsedDate, locale: locale);
  }
}
