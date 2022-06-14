import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';

class GetRestaurants extends UseCase<List<RestaurantDTO>, int> {
  final RestaurantRepository _repository;
  GetRestaurants(this._repository);

  @override
  Future<Either<Failure, List<RestaurantDTO>>> call(int params) async {
    return _repository.getRestaurants(page: params);
  }
}
