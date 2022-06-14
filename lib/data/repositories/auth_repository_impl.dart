import 'dart:developer';
import 'dart:io';

import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/core/error/exception.dart';
import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/platform/network_info.dart';
import 'package:codeunion_test/data/datasources/local/auth_local_ds.dart';
import 'package:codeunion_test/data/datasources/remote/auth_remote_ds.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDS remoteDS;
  final AuthLocalDS localDS;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDS,
    required this.localDS,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserDTO>> signInUser({
    required String email,
    required String password,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final UserDTO user =
            await remoteDS.signIn(password: password, email: email);
        await localDS.saveUserToCache(user: user);
        // await cityLocalDS.chosenCityToCache(user.city!);
        return Right(user);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      try {
        final user = await localDS.getUserFromCache();
        return Right(user);
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.message));
      }
    }
  }

  @override
  Future<Either<Failure, UserDTO>> authCheck() async {
    try {
      final user = await localDS.getUserFromCache();
      log('AuthRepositoryImpl authCheck:: ${user.accessToken}, userID:: ${user.id}');
      if (user.accessToken == null) {
        // && user.verifyStatus != 'wait') {
        return Left(CacheFailure(message: 'Пустой токен!'));
      }
      return Right(user);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> logOut() async {
    try {
      final user = await localDS.getUserFromCache();
      // final String msg = await remoteDS.logout(token: user.accessToken!);
      // log('####### logOut msg: $msg');

      await localDS.removeUserFromCache();
      log('AuthRepositoryImpl logOut:: ');
      return const Right(true);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserDTO>> signUpUser({
    required String nickname,
    required String phone,
    required String password,
    required String email,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final UserDTO user = await remoteDS.signUp(
          password: password,
          phone: phone,
          nickname: nickname,
          email: email,
        );
        await localDS.saveUserToCache(user: user);

        return Right(user);
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
  Future<Either<Failure, UserDTO>> getUserFromCache() async {
    try {
      final UserDTO user = await localDS.getUserFromCache();
      return Right(user);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserDTO>> getUserFromBack() async {
    if (await networkInfo.isConnected) {
      try {
        final UserDTO user = await localDS.getUserFromCache();
        final UserDTO newUser = await remoteDS.getUserFromBack(
          token: user.accessToken!,
        );
        // log(newUser.toString());
        await localDS.saveUserToCache(
          user: newUser.copyWith(
            accessToken: user.accessToken,
            refreshToken: user.refreshToken,
          ),
        );

        return Right(newUser);
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
