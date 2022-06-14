import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';

class AddLike extends UseCase<String, int> {
  final RestaurantRepository _repository;
  AddLike(this._repository);

  @override
  Future<Either<Failure, String>> call(int params) async {
    return _repository.addLike(restaurantId: params);
  }
}
