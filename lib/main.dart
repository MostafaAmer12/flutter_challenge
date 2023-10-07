import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/core/theme/app_theme.dart';
import 'package:flutter_challenge/features/setting/presentation/model_view/bloc/switch_theme_bloc.dart';
import 'package:flutter_challenge/features/setting/tab_bar.dart';
import 'package:flutter_challenge/features/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SwitchThemeBloc(),
      child: BlocBuilder<SwitchThemeBloc, SwitchThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.switchValue
                ? AppThemes.appThemeData[AppTheme.darkTheme]
                : AppThemes.appThemeData[AppTheme.lightTheme],
            debugShowCheckedModeBanner: false,
            home: const TabBarWidget(),
          );
        },
      ),
    );
  }
}
