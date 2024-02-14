import 'package:dio/dio.dart';
import 'package:sameple_flutter/constant/app_constant.dart';

class GetXClient {
  late Dio _dio;

  GetXClient._() {
    _dio = Dio(BaseOptions(
        baseUrl: ServerRout.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          "Authorization": "Basic aG90ZWw6aG90ZWxAMTIz",
        },
        responseType: ResponseType.json))
      ..interceptors.addAll([LogInterceptor()]);
  }

  static final instance = GetXClient._();

  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final res = await _dio.get(
        path,
        queryParameters: queryParameters,
      );
      if (res.statusCode == 200) {
        return res.data;
      }
      throw ("Opp Something went wrong");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post({
    required String path,
    dynamic data,
  }) async {
    try {
      final res = await _dio.post(path, data: data);
      if (res.statusCode == 200) {
        return res.data;
      }
      throw ("Opp Something went wrong");
    } catch (e) {
      rethrow;
    }
  }
}
