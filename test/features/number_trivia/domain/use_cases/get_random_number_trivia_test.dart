import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:numbers_trivia_clean_architecture/features/number_trivia/domain/use_cases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}

void main() {

  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetRandomNumberTrivia getRandomNumberTrivia;

  //  setup our data
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    getRandomNumberTrivia = GetRandomNumberTrivia(repository: mockNumberTriviaRepository);
  });

  test("Should return a random trivia for a random number", () async {

    //  arrange
    when (mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(NumberTrivia(text: "Hello", number: 2)));
    //  act
    final result = await getRandomNumberTrivia();
    //  assert
    expect(result, Right(NumberTrivia(text: "Hello", number: 2)));
    verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
































