import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_demo/core/usecases/usecase.dart';
import 'package:flutter_demo/core/error/failures.dart';
import 'package:flutter_demo/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_demo/features/number_trivia/domain/reopository/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(
    Params params,
  ) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super([number]);
}
