part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailure extends HomeState {
  final String errMessage;

  const HomeFailure({required this.errMessage});
}

class HomePlaying extends HomeState {
  final QuranModel quran;

  const HomePlaying({required this.quran});
}
