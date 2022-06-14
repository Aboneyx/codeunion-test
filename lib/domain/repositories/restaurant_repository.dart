import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:dartz/dartz.dart';

abstract class RestaurantRepository {
  Future<Either<Failure, List<RestaurantDTO>>> getRestaurants({
    required int page,
  });

  Future<Either<Failure, String>> addLike({
    required int restaurantId,
  });

  Future<Either<Failure, bool>> deleteLike({
    required int restaurantId,
  });

  Future<Either<Failure, List<RestaurantDTO>>> getFavoriteRestaurants();
}
