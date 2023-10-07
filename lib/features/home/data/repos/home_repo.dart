import 'package:dartz/dartz.dart';
import 'package:flutter_challenge/core/error/failure.dart';
import 'package:flutter_challenge/features/home/data/model/quran_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, QuranModel>> getSound();
}
