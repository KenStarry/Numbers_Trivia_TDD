import 'package:dartz/dartz.dart';
import 'package:numbers_trivia_clean_architecture/core/domain/model/failure.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia {

  final NumberTriviaRepository repository;

  GetRandomNumberTrivia({required this.repository});

  Future<Either<Failure, NumberTrivia>?>? call() async {
    return await repository.getRandomNumberTrivia();
  }
}