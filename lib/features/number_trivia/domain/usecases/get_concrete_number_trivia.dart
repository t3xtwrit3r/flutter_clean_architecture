import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/error/failures.dart';
import 'package:flutter_clean_architecture/core/usecases/usecase.dart';
import 'package:flutter_clean_architecture/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:flutter_clean_architecture/features/number_trivia/domain/repository/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, int>{

  final NumberTriviaRepository numberTriviaRepository;

  GetConcreteNumberTrivia(this.numberTriviaRepository);

  @override
  Future<Either<Failure,NumberTrivia>> call (int number,) async {
    return await numberTriviaRepository.getConcreteNumberTrivia(number);
  }

}