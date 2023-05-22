import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:numbers_trivia_clean_architecture/core/domain/model/failure.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/use_cases/get_concrete_number_trivia.dart';

//  mocking the implementation of the repository
class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}

void main() {
  //  our use case
  late GetConcreteNumberTrivia useCase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    useCase = GetConcreteNumberTrivia(repository: mockNumberTriviaRepository);
  });

  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: "Helkmknfjknvkjdnkjvn", number: tNumber);
  
  test("Should get trivia for the number from the repository", () async {
    //  arrange
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(1))
        .thenAnswer((_) async => Right(tNumberTrivia));
    //  act
    final result = await useCase(number: tNumber);
    //  assert
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
    //  the use case should then not do anything else with the repo
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}

























