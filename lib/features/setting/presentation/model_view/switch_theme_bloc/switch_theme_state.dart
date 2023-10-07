part of 'switch_theme_bloc.dart';

class SwitchThemeState extends Equatable {
  final bool switchThemeValue;
  const SwitchThemeState(
    this.switchThemeValue,
  );

  @override
  List<Object> get props => [
        switchThemeValue,
      ];
}

final class SwitchThemeInitial extends SwitchThemeState {
  const SwitchThemeInitial(
    super.switchThemeValue,
  );
}
