import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';

class GetFavoriteRestaurants extends UseCaseOnly<List<RestaurantDTO>> {
  final RestaurantRepository _repository;
  GetFavoriteRestaurants(this._repository);

  @override
  Future<Either<Failure, List<RestaurantDTO>>> call() async {
    return _repository.getFavoriteRestaurants();
  }
}
