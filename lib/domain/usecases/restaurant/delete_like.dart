import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteLike extends UseCase<bool, int> {
  final RestaurantRepository _repository;
  DeleteLike(this._repository);

  @override
  Future<Either<Failure, bool>> call(int params) async {
    return _repository.deleteLike(restaurantId: params);
  }
}
