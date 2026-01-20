import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;

  ApiClient({Dio? dio}) : _dio = dio ?? Dio();

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      print('🚀 Calling GET: $path');
      return await _dio.get(path, queryParameters: queryParameters);
    } on DioException catch (e) {
      print('💥 GET request failed: $path');
      throw _handleError(e);
    }
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      print('🚀 Calling POST: $path');
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      print('💥 POST request failed: $path');
      throw _handleError(e);
    }
  }

  Future<Response> put(String path, {dynamic data}) async {
    try {
      print('🚀 Calling PUT: $path');
      return await _dio.put(path, data: data);
    } on DioException catch (e) {
      print('💥 PUT request failed: $path');
      throw _handleError(e);
    }
  }

  Future<Response> delete(String path, {dynamic data}) async {
    try {
      print('🚀 Calling DELETE: $path');
      return await _dio.delete(path, data: data);
    } on DioException catch (e) {
      print('💥 DELETE request failed: $path');
      throw _handleError(e);
    }
  }

  Future<Response> patch(String path, {dynamic data}) async {
    try {
      print('🚀 Calling PATCH: $path');
      return await _dio.patch(path, data: data);
    } on DioException catch (e) {
      print('💥 PATCH request failed: $path');
      throw _handleError(e);
    }
  }

  Exception _handleError(DioException error) {
    print('⚠️ Handling error: ${error.type}');

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        print('⏱️ Timeout error occurred');
        return NetworkException(message: 'Connection timeout');

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final message = error.response?.data['message'] ?? 'Server error';

        print('🔴 Bad response - Status: $statusCode, Message: $message');

        if (statusCode == 401) {
          return AuthException(message: 'Unauthorized - Please login again');
        } else if (statusCode == 403) {
          return AuthException(message: 'Forbidden - No permission');
        } else if (statusCode == 404) {
          return ServerException(
            message: 'Resource not found',
            statusCode: statusCode,
          );
        } else if (statusCode == 422) {
          return ValidationException(message: message);
        } else if (statusCode != null && statusCode >= 500) {
          return ServerException(
            message: 'Server error - Please try again later',
            statusCode: statusCode,
          );
        }

        return ServerException(message: message, statusCode: statusCode);

      case DioExceptionType.cancel:
        print('🚫 Request cancelled');
        return NetworkException(message: 'Request cancelled');

      case DioExceptionType.unknown:
        print('❓ Unknown error occurred');
        return NetworkException(
          message: 'Network error - Please check your connection',
        );

      default:
        print('❓ Unhandled error type: ${error.type}');
        return NetworkException(message: 'Unknown error occurred');
    }
  }
}

class ServerException implements Exception {
  final String message;
  final int? statusCode;

  ServerException({required this.message, this.statusCode});

  @override
  String toString() => message;
}

class NetworkException implements Exception {
  final String message;

  NetworkException({required this.message});

  @override
  String toString() => message;
}

class AuthException implements Exception {
  final String message;

  AuthException({required this.message});

  @override
  String toString() => message;
}

class ValidationException implements Exception {
  final String message;

  ValidationException({required this.message});

  @override
  String toString() => message;
}

class CacheException implements Exception {
  final String message;

  CacheException({required this.message});

  @override
  String toString() => message;
}
