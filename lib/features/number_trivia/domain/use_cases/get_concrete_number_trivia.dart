import 'package:dartz/dartz.dart';
import 'package:numbers_trivia_clean_architecture/core/domain/model/failure.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia({required this.repository});

  //  we can use call to create a callable class
  Future<Either<Failure, NumberTrivia>?>? call({required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}