import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_challenge/core/api/api_service.dart';
import 'package:flutter_challenge/core/error/failure.dart';
import 'package:flutter_challenge/features/home/data/model/quran_model.dart';
import 'package:flutter_challenge/features/home/data/repos/home_repo.dart';

class HomeRepositoryImpl implements HomeRepository {
  final ApiService apiService;

  HomeRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, QuranModel>> getSound() async {
    try {
      var data = await apiService.get(endpoint: '1');
      QuranModel quran = QuranModel.fromJson(data);

      return right(quran);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
