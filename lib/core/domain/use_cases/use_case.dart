import 'package:dartz/dartz.dart';
import 'package:numbers_trivia_clean_architecture/core/domain/model/failure.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';

//  this will be implemented across the board for all use cases
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call();
}