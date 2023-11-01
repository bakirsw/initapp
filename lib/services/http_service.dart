import 'package:dio/dio.dart';

class HttpService {
  final _dio = Dio();

  final String _baseUrl = const String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://127.0.0.1:8080/',
  );

  Future<dynamic> getHttp({
    required String route,
    Map<String, dynamic>? headers,
  }) async {
    print('Sending GET to ${_baseUrl + route}');

    try {
      final response = await _dio.get<dynamic>(
        _baseUrl + route,
        options: Options(
          headers: headers,
          contentType: 'application/json',
        ),
      );
      return response.data;
    } on DioException catch (e) {
      throw Exception(e);
    }
  }
}
