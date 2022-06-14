import 'dart:developer';

import 'package:codeunion_test/core/error/exception.dart';
import 'package:codeunion_test/core/platform/network_helper.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

const _tag = 'RestaurantRemoteDS';

abstract class RestaurantRemoteDS {
  Future<List<RestaurantDTO>> getRestaurants({
    required String accessToken,
    required int page,
  });

  Future<void> addLike({
    required String accessToken,
    required int restaurantId,
  });

  Future<bool> deleteLike({
    required String accessToken,
    required int restaurantId,
  });

  Future<List<RestaurantDTO>> getFavoriteRestaurants({
    required String accessToken,
  });
}

class RestaurantRemoteDSImpl extends RestaurantRemoteDS {
  final Dio dio;

  RestaurantRemoteDSImpl(this.dio);

  @override
  Future<List<RestaurantDTO>> getRestaurants({
    required String accessToken,
    required int page,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $accessToken';
    dio.options.headers['Accept'] = "application/json";
    try {
      final response = await dio.get(
        '$SERVER_$SERVER_PATH/restaurants/all?page=$page',
      );

      log(
        '##### getRestaurants api:: ${response.statusCode}',
        name: _tag,
      );
      return compute<List, List<RestaurantDTO>>(
        (List list) {
          return list
              .map((e) => RestaurantDTO.fromJson(e as Map<String, dynamic>))
              .toList();
        },
        (response.data as Map<String, dynamic>)['restaurants'] as List,
      );
    } on DioError catch (e) {
      log('$e', name: _tag);
      throw ServerException(
        message: e.toString(),
        //(e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<void> addLike({
    required String accessToken,
    required int restaurantId,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $accessToken';
    dio.options.headers['Accept'] = "application/json";
    try {
      final response = await dio.post(
        '$SERVER_$SERVER_PATH/likes/new',
        data: {
          'restaurant_id': restaurantId,
        },
      );

      log(
        '##### addLike api:: ${response.statusCode}',
        name: _tag,
      );
    } on DioError catch (e) {
      log('$e', name: _tag);
      throw ServerException(
        message: e.toString(),
        //(e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<bool> deleteLike({
    required String accessToken,
    required int restaurantId,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $accessToken';
    dio.options.headers['Accept'] = "application/json";
    try {
      final response = await dio.delete(
        '$SERVER_$SERVER_PATH/likes/$restaurantId',
      );

      log(
        '##### deleteLike api:: ${response.statusCode}',
        name: _tag,
      );

      return (response.data as Map<String, dynamic>)['success'] as bool;
    } on DioError catch (e) {
      log('$e', name: _tag);
      throw ServerException(
        message: e.toString(),
        //(e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<List<RestaurantDTO>> getFavoriteRestaurants({
    required String accessToken,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $accessToken';
    dio.options.headers['Accept'] = "application/json";
    try {
      final response = await dio.get(
        '$SERVER_$SERVER_PATH/likes/all',
      );

      log(
        '##### getFavoriteRestaurants api:: ${response.statusCode}',
        name: _tag,
      );
      return compute<List, List<RestaurantDTO>>(
        (List list) {
          return list
              .map((e) => RestaurantDTO.fromJson(e as Map<String, dynamic>))
              .toList();
        },
        (response.data as Map<String, dynamic>)['restaurants'] as List,
      );
    } on DioError catch (e) {
      log('$e', name: _tag);
      throw ServerException(
        message: e.toString(),
        //(e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }
}
