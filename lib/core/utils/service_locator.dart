import 'package:dio/dio.dart';
import 'package:flutter_challenge/core/api/api_service.dart';
import 'package:flutter_challenge/features/home/data/repos/home_repo_implement.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepositoryImpl>(
    HomeRepositoryImpl(
      apiService: getIt(),
    ),
  );
}
