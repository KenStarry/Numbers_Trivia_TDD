import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  //  checks equality based on the fields
  Failure([List properties = const<dynamic>[]]) : super();
}