part of 'number_trivia_bloc.dart';

abstract class NumberTriviaState extends Equatable {
  NumberTriviaState([List props = const <dynamic>[]]) : super(props);
}

class Empty extends NumberTriviaState {

}

class LoadingState extends NumberTriviaState {

}

class Loaded extends NumberTriviaState {

  final NumberTrivia trivia;

  Loaded({required this.trivia}): super([trivia]);

}

class ErrorState extends NumberTriviaState {

  final String message;

  ErrorState({required this.message}): super([message]);

}
