import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://test.kafiil.com';

  final Dio _dio;
  ApiService(this._dio);

  Future post({
    required String endpoint,
    required Map<String, dynamic> headers,
    required Object data,
  }) async {
    var response = await _dio.post(
      '$_baseUrl/$endpoint',
      options: Options(
        headers: headers,
      ),
      data: data,
    );

    return response.data;
  }
}
