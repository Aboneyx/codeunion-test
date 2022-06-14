import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserDTO>> authCheck();

  Future<Either<Failure, bool>> logOut();

  Future<Either<Failure, UserDTO>> signInUser({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserDTO>> signUpUser({
    required String email,
    required String nickname,
    required String phone,
    required String password,
  });

  Future<Either<Failure, UserDTO>> getUserFromCache();

  Future<Either<Failure, UserDTO>> getUserFromBack();
}
