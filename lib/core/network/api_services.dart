import 'package:dio/dio.dart';

class ApiEndpoints {
  static const String baseUrl = 'https://www.7pets.net/wp-json/wc/v3';
  static const String products = '/products';
  static const String categories = '/products/categories';
  static const String reviews = '/products/reviews';
  static const String orders = '/orders';
  static const String customers = '/customers';
  static const String addresses =
      '/customers/{id}/addresses'; // hypothetical endpoint
  static const String changePassword =
      '/customers/{id}/change-password'; // hypothetical
  static const String editProfile = '/customers/{id}';
}

class ApiService {
  static const String consumerKey =
      'ck_462410a2598a1d23c49fa61dcf4cc925c4215a65';
  static const String consumerSecret =
      'cs_9e22c62fb7b9150323239e1645a29fdeecbd3c5d';

  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      queryParameters: {
        'consumer_key': consumerKey,
        'consumer_secret': consumerSecret,
      },
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  static Future<List<dynamic>> getProducts(
      {int page = 1, int perPage = 10}) async {
    final response = await _dio.get(ApiEndpoints.products, queryParameters: {
      'page': page,
      'per_page': perPage,
    });
    return response.data;
  }

  static Future<Map<String, dynamic>> getProductById(int id) async {
    final response = await _dio.get('${ApiEndpoints.products}/$id');
    return response.data;
  }

  static Future<List<dynamic>> searchProducts(String query) async {
    final response = await _dio.get(ApiEndpoints.products, queryParameters: {
      'search': query,
    });
    return response.data;
  }

  static Future<List<dynamic>> getFilteredProducts(
      Map<String, dynamic> filters) async {
    final response =
        await _dio.get(ApiEndpoints.products, queryParameters: filters);
    return response.data;
  }

  static Future<List<dynamic>> getCategories() async {
    final response = await _dio.get(ApiEndpoints.categories);
    return response.data;
  }

  static Future<List<dynamic>> getCategoryProducts(int categoryId) async {
    final response = await _dio.get(ApiEndpoints.products, queryParameters: {
      'category': categoryId,
    });
    return response.data;
  }

  static Future<List<dynamic>> getReviews(int productId) async {
    final response = await _dio.get(ApiEndpoints.reviews, queryParameters: {
      'product': productId,
    });
    return response.data;
  }

  static Future<Map<String, dynamic>> addReview(
      Map<String, dynamic> reviewData) async {
    final response = await _dio.post(ApiEndpoints.reviews, data: reviewData);
    return response.data;
  }

  static Future<Map<String, dynamic>> createOrder(
      Map<String, dynamic> orderData) async {
    final response = await _dio.post(ApiEndpoints.orders, data: orderData);
    return response.data;
  }

  static Future<List<dynamic>> getOrders({int customerId = 0}) async {
    final response = await _dio.get(ApiEndpoints.orders, queryParameters: {
      'customer': customerId,
    });
    return response.data;
  }

  static Future<Map<String, dynamic>> signUp(
      Map<String, dynamic> customerData) async {
    final response =
        await _dio.post(ApiEndpoints.customers, data: customerData);
    return response.data;
  }

  static Future<Map<String, dynamic>> login(
      String username, String password) async {
    final response = await Dio().post(
      'https://www.7pets.net/wp-json/jwt-auth/v1/token',
      data: {
        'username': username,
        'password': password,
      },
    );
    return response.data;
  }

  static Future<Map<String, dynamic>> changePassword(
      int userId, Map<String, dynamic> data) async {
    final endpoint =
        ApiEndpoints.changePassword.replaceFirst('{id}', '$userId');
    final response = await _dio.post(endpoint, data: data);
    return response.data;
  }

  static Future<Map<String, dynamic>> editProfile(
      int userId, Map<String, dynamic> data) async {
    final endpoint = ApiEndpoints.editProfile.replaceFirst('{id}', '$userId');
    final response = await _dio.put(endpoint, data: data);
    return response.data;
  }

  static Future<List<dynamic>> getAddresses(int userId) async {
    final endpoint = ApiEndpoints.addresses.replaceFirst('{id}', '$userId');
    final response = await _dio.get(endpoint);
    return response.data;
  }

  static Future<Map<String, dynamic>> addNewAddress(
      int userId, Map<String, dynamic> data) async {
    final endpoint = ApiEndpoints.addresses.replaceFirst('{id}', '$userId');
    final response = await _dio.post(endpoint, data: data);
    return response.data;
  }
}
