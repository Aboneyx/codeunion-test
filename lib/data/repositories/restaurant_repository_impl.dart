import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/core/error/exception.dart';
import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/platform/network_info.dart';
import 'package:codeunion_test/data/datasources/local/auth_local_ds.dart';
import 'package:codeunion_test/data/datasources/remote/restaurant_remote_ds.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';

class RestaurantRepositoryImpl extends RestaurantRepository {
  final RestaurantRemoteDS remoteDS;
  final AuthLocalDS localDS;
  final NetworkInfo networkInfo;
  RestaurantRepositoryImpl({
    required this.remoteDS,
    required this.localDS,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<RestaurantDTO>>> getRestaurants({
    required int page,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final UserDTO user = await localDS.getUserFromCache();
        final List<RestaurantDTO> restaurants = await remoteDS.getRestaurants(
          accessToken: user.accessToken!,
          page: page,
        );

        return Right(restaurants);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, String>> addLike({
    required int restaurantId,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final UserDTO user = await localDS.getUserFromCache();
        await remoteDS.addLike(
          accessToken: user.accessToken!,
          restaurantId: restaurantId,
        );

        return const Right('Added Like');
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteLike({
    required int restaurantId,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final UserDTO user = await localDS.getUserFromCache();
        final bool res = await remoteDS.deleteLike(
          accessToken: user.accessToken!,
          restaurantId: restaurantId,
        );

        if (res) {
          return Right(res);
        } else {
          return Left(CacheFailure(message: 'Error when deleting like'));
        }
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, List<RestaurantDTO>>> getFavoriteRestaurants() async {
    if (await networkInfo.isConnected) {
      try {
        final UserDTO user = await localDS.getUserFromCache();
        final List<RestaurantDTO> restaurants =
            await remoteDS.getFavoriteRestaurants(
          accessToken: user.accessToken!,
        );

        return Right(restaurants);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }
}
