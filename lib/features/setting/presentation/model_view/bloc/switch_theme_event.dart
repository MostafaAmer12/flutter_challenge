// ignore_for_file: camel_case_types

part of 'switch_theme_bloc.dart';

abstract class SwitchThemeEvent extends Equatable {
  const SwitchThemeEvent();

  @override
  List<Object> get props => [];
}

class SwitchDarkThemeEvent extends SwitchThemeEvent {}

class SwitchLightThemeEvent extends SwitchThemeEvent {}
