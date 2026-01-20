import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Failure {
  final String errMsg;

  const Failure(this.errMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMsg);

  factory ServerFailure.formDioException(DioException dioException) {
    if (dioException.message?.contains("Unauthenticated") ?? false) {
      return ServerFailure('Your session has expired, please login again'.tr);
    }
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer'.tr);
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer'.tr);
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer'.tr);
      case DioExceptionType.cancel:
        return ServerFailure('Your Request with ApiServer was canceled'.tr);
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.badCertificate:
        return ServerFailure('Failed to authenticate with ApiServer'.tr);
      case DioExceptionType.connectionError:
        return ServerFailure('There was a Connection error with the Server'.tr);
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') ?? false) {
          return ServerFailure('Check your internet connection please'.tr);
        }
        return ServerFailure('There was an unknown error with the Server'.tr);
    }
  }

  factory ServerFailure.fromResponse(
    int statusCode,
    dynamic respone, {
    BuildContext? context,
  }) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 404) {
      try {
        if (respone['message'].toString().contains("Unauthenticated")) {
          return ServerFailure(
            'Your session has expired, please login again'.tr,
          );
        }
        return ServerFailure(respone['message'].toString());
      } catch (e) {
        log(e.toString());
        return ServerFailure(respone.toString());
      }
    } else if (statusCode == 403) {
      return ServerFailure(
          'Your Request not found, please try again later!'.tr);
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try again later!'.tr);
    } else {
      return ServerFailure(
          'Oops! There was an error, please try again later'.tr);
    }
  }
}
