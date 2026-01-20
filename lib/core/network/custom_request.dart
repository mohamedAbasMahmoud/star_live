import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:trust_task/core/errors/failure.dart';

import '../services/app_prefs.dart';
import 'api_constance.dart';

/*
* This class is used to send custom requests to the server using Dio package and return the response as Either of Failure and T
* It has a generic type T which is the type of the Model data
* It has a generic type R which is the type of the response type data
*/

class CustomRequest<T, M> {
  /*
* It has a path which is the endpoint of the request
* It has a queryParameters which is the query parameters of the request
* It has a data which is the request data
* It has a fromJson function which is used to convert the response to the required type
* It has a files which is the files to upload with the request, Key is the key of the file in the request, Value is the path of the file
*/

  final String path;
  final Map<String, dynamic> queryParameters;
  final Map<String, dynamic> data;
  final T Function(M) fromJson;
  final Map<String, String> files;
  final bool showLogs;

  CustomRequest({
    required this.path,
    required this.fromJson,
    this.queryParameters = const {},
    this.data = const {},
    this.files = const {},
    this.showLogs = false,
  });

  /*
* It has sendGetRequest, sendPostRequest, sendPutRequest, sendDeleteRequest, sendPatchRequest methods to send the request
* It returns an Either of Failure and T
* If the request is successful it returns Right with the response data
* If the request fails it returns Left with the Failure
*/

  Dio _getDio() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiConstance.baseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',

          'Authorization': 'Bearer ${ApiConstance.token}',
          //{Get.find<AppPreferences>().getToken()}
        },
      ),
    );

    if (showLogs) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: false,
          request: true,
          compact: true,
          error: true,
          responseHeader: true,
          logPrint: (object) {
            if (kDebugMode) {
              debugPrint(object.toString());
            }
          },
        ),
      );
    }
    return dio;
  }

  Future<Either<Failure, T>> sendGetRequest() async {
    log(data.toString(), name: 'DATA');

    try {
      final response = await _getDio().get(
        path,
        queryParameters: queryParameters,
        data: data,
      );

      final jsonData = fromJson(response.data);

      return Right(jsonData);
    } catch (e) {
      if (e is DioException) {
        if (kDebugMode) {
          print("==== Error =====");
          print("${e.response?.data}");
          print("==== Error =====");
        }
        return Left(ServerFailure.formDioException(e));
      }
      if (kDebugMode) {
        print("==== Error =====");
        print("$e");
        print("==== Error =====");
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, T>> sendPostRequest() async {
    try {
      final response = await _getDio().post(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      final jsonData = fromJson(response.data);

      return Right(jsonData);
    } catch (e) {
      if (e is DioException) {
        if (kDebugMode) {
          print("==== Error =====");
          print("${e.response?.data}");
          print("==== Error =====");
        }
        return Left(ServerFailure.formDioException(e));
      }
      if (kDebugMode) {
        print("==== Error =====");
        print("$e");
        print("==== Error =====");
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, T>> sendPostRequestWithFiles() async {
    try {
      Map<String, dio.MultipartFile> files = {};

      if (this.files.isNotEmpty) {
        for (var file in this.files.entries) {
          files[file.key] = await dio.MultipartFile.fromFile(
            file.value,
            filename: file.value.split('/').last,
          );
        }
      }

      final data = dio.FormData.fromMap({
        if (files.isNotEmpty) ...files,
        ...this.data,
      });

      final response = await _getDio().post(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      final jsonData = fromJson(response.data);

      return Right(jsonData);
    } catch (e) {
      if (e is DioException) {
        if (kDebugMode) {
          print("==== Error =====");
          print("${e.response?.data}");
          print("==== Error =====");
        }
        return Left(ServerFailure.formDioException(e));
      }
      if (kDebugMode) {
        print("==== Error =====");
        print("$e");
        print("==== Error =====");
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, T>> sendPutRequest() async {
    try {
      final response = await _getDio().put(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      final jsonData = fromJson(response.data);

      return Right(jsonData);
    } catch (e) {
      if (e is DioException) {
        if (kDebugMode) {
          print("==== Error =====");
          print("${e.response?.data}");
          print("==== Error =====");
        }
        return Left(ServerFailure.formDioException(e));
      }
      if (kDebugMode) {
        print("==== Error =====");
        print("$e");
        print("==== Error =====");
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, T>> sendDeleteRequest() async {
    try {
      final response = await _getDio().delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      final jsonData = fromJson(response.data);

      return Right(jsonData);
    } catch (e) {
      if (e is DioException) {
        if (kDebugMode) {
          print("==== Error =====");
          print("${e.response?.data}");
          print("==== Error =====");
        }
        return Left(ServerFailure.formDioException(e));
      }
      if (kDebugMode) {
        print("==== Error =====");
        print("$e");
        print("==== Error =====");
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, T>> sendPatchRequest() async {
    try {
      final response = await _getDio().patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      final jsonData = fromJson(response.data);

      return Right(jsonData);
    } catch (e) {
      if (e is DioException) {
        if (kDebugMode) {
          print("==== Error =====");
          print("${e.response?.data}");
          print("==== Error =====");
        }
        return Left(ServerFailure.formDioException(e));
      }
      if (kDebugMode) {
        print("==== Error =====");
        print("$e");
        print("==== Error =====");
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
