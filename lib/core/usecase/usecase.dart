import 'package:codeunion_test/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseOnly<Type> {
  Future<Either<Failure, Type>> call();
}
