import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/core/theme/app_theme.dart';
import 'package:flutter_challenge/features/setting/presentation/model_view/bloc/switch_language_bloc.dart';
import 'package:flutter_challenge/features/setting/presentation/model_view/switch_theme_bloc/switch_theme_bloc.dart';
import 'package:flutter_challenge/features/setting/tab_bar.dart';
import 'package:flutter_challenge/features/simple_bloc_observer.dart';
import 'package:flutter_challenge/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(
    BlocProvider(
      create: (context) => SwitchLanguageBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SwitchThemeBloc(),
      child: BlocBuilder<SwitchLanguageBloc, SwitchLanguageState>(
        builder: (context, state) {
          return BlocBuilder<SwitchThemeBloc, SwitchThemeState>(
            builder: (switchContext, switchState) {
              return MaterialApp(
                locale: state.switchLanguageValue
                    ? const Locale('ar')
                    : const Locale('en'),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                theme: switchState.switchThemeValue
                    ? AppThemes.appThemeData[AppTheme.darkTheme]
                    : AppThemes.appThemeData[AppTheme.lightTheme],
                debugShowCheckedModeBanner: false,
                home: const TabBarWidget(),
              );
            },
          );
        },
      ),
    );
  }
}
