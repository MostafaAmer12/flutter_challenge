import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_language_event.dart';
part 'switch_language_state.dart';

class SwitchLanguageBloc extends Bloc<SwitchLanguageEvent, SwitchLanguageState> {
  SwitchLanguageBloc() : super(const SwitchLanguageInitial(false)) {
    on<ArabicLanguageEvent>((event, emit) {
      emit(const SwitchLanguageInitial(true));
    });
    on<EnglishLanguageEvent>((event, emit) {
      emit(const SwitchLanguageInitial(false));
    });
  }
}
