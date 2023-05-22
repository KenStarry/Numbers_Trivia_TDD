import 'package:equatable/equatable.dart';

//  model from the api - text and number
class NumberTrivia extends Equatable {
  final String text;
  final int number;

  NumberTrivia({required this.text, required this.number});

  @override
  List<Object?> get props => [text, number];
}
