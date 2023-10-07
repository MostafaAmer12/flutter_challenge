import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_theme_event.dart';
part 'switch_theme_state.dart';

class SwitchThemeBloc extends Bloc<SwitchThemeEvent, SwitchThemeState> {
  SwitchThemeBloc() : super(const SwitchThemeInitial(switchValue: false)) {
    on<SwitchDarkThemeEvent>((event, emit) {
      emit(const SwitchThemeInitial(switchValue: true));
    });
    on<SwitchLightThemeEvent>((event, emit) {
      emit(const SwitchThemeInitial(switchValue: false));
    });
  }
}
