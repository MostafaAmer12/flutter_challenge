import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://api.quran.com/api/v4/chapter_recitations/1/';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$baseUrl$endpoint');
    return response.data;
  }
}
