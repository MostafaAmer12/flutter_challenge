import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/core/api/api_service.dart';
import 'package:flutter_challenge/features/home/data/repos/home_repo_implement.dart';
import 'package:flutter_challenge/features/home/presentation/model_view/cubit/home_cubit.dart';
import 'package:flutter_challenge/features/home/presentation/view/widgets/body_view/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(
        HomeRepositoryImpl(
          apiService: ApiService(
            dio: Dio(),
          ),
        ),
      )..getSound(),
      child: const HomeViewBody(),
    );
  }
}
