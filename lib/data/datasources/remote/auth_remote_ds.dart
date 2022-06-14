import 'dart:developer';

import 'package:codeunion_test/core/error/exception.dart';
import 'package:codeunion_test/core/platform/network_helper.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:dio/dio.dart';

const _tag = 'AuthRemoteDS';

abstract class AuthRemoteDS {
  Future<UserDTO> signIn({
    required String email,
    required String password,
  });

  Future<UserDTO> signUp({
    required String nickname,
    required String phone,
    required String password,
    required String email,
  });

  Future<String> logout({
    required String token,
  });

  Future<UserDTO> getUserFromBack({
    required String token,
  });
}

class AuthRemoteDSImpl extends AuthRemoteDS {
  final Dio dio;

  AuthRemoteDSImpl(this.dio);

  @override
  Future<UserDTO> signIn({
    required String email,
    required String password,
  }) async {
    dio.options.headers['Accept'] = "application/json";
    dio.options.headers['Content-Type'] = 'application/json';
    try {
      final bool isEmail = email.contains('@');
      log(
        'message from auth remotes ds::  $email, $password, isEmail: $isEmail',
        name: _tag,
      );
      final response = await dio.post(
        '$SERVER_$SERVER_PATH/auth/login',
        data: {
          if (isEmail) 'email': email else 'nickname': email,
          'password': password,
        },
      );
      final Map<String, dynamic> tokensData = (response.data
          as Map<String, dynamic>)['tokens'] as Map<String, dynamic>;

      final UserDTO user = UserDTO.fromJson(
        (response.data as Map<String, dynamic>)['user'] as Map<String, dynamic>,
      ).copyWith(
        accessToken: tokensData['accessToken'] as String?,
        refreshToken: tokensData['refreshToken'] as String?,
      );

      log(
        'signIn method in authremoteds:: ${response.statusCode}, ${response.data}, $email, $password',
        name: _tag,
      );
      return user;
    } on DioError catch (e) {
      log(
        '##### signIn api error::: ${e.response}, ${e.error}',
        name: _tag,
      );
      throw ServerException(
        message:
            (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<UserDTO> signUp({
    required String nickname,
    required String phone,
    required String password,
    required String email,
  }) async {
    dio.options.headers['Accept'] = "application/json";
    try {
      final response = await dio.post(
        '$SERVER_$SERVER_PATH/auth/registration/customer/new',
        data: {
          'email': email,
          'phone': phone,
          'password': password,
          'nickname': nickname
        },
      );

      log(
        'signUp method in authremoteds:: ${response.statusCode}, ${response.data}, ${'7$phone'}, $password',
        name: _tag,
      );
      final Map<String, dynamic> tokensData = (response.data
          as Map<String, dynamic>)['tokens'] as Map<String, dynamic>;

      final UserDTO user = UserDTO.fromJson(
        (response.data as Map<String, dynamic>)['user'] as Map<String, dynamic>,
      ).copyWith(
        accessToken: tokensData['accessToken'] as String?,
        refreshToken: tokensData['refreshToken'] as String?,
      );

      return user;
    } on DioError catch (e) {
      log(
        '### signUp api::: ${e.response}, ${e.error}',
        name: _tag,
      );
      throw ServerException(
        message:
            (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<String> logout({
    required String token,
  }) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<UserDTO> getUserFromBack({
    required String token,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $token';
    dio.options.headers['Accept'] = "application/json";
    try {
      final response = await dio.get(
        '$SERVER_$SERVER_PATH/auth/login/profile',
      );

      log('##### getUserFromBack api:: ${response.statusCode}');
      return UserDTO.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioError catch (e) {
      log('$e', name: _tag);
      throw ServerException(
        message:
            (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }
}
