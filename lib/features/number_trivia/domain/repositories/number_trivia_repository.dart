import 'package:dartz/dartz.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../core/domain/model/failure.dart';

//  interface
abstract class NumberTriviaRepository {
  //  left for failure - right for success
  Future<Either<Failure, NumberTrivia>>? getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>>? getRandomNumberTrivia();
}