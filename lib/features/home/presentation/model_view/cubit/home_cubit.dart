import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_challenge/features/home/data/model/quran_model.dart';
import 'package:flutter_challenge/features/home/data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(HomeInitial());

  final HomeRepository homeRepository;

  Future<void> getSound() async {
    emit(HomeLoading());
    var result = await homeRepository.getSound();
    result.fold((failure) {
      emit(HomeFailure(errMessage: failure.errorMsg));
    }, (quran) {
      emit(HomePlaying(quran: quran));
    });
  }
}
