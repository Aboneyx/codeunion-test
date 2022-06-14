import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class SignUpUser extends UseCase<UserDTO, SignUpUserParams> {
  final AuthRepository _authRepository;
  SignUpUser(this._authRepository);

  @override
  Future<Either<Failure, UserDTO>> call(SignUpUserParams params) async {
    return _authRepository.signUpUser(
      email: params.email,
      phone: params.phone,
      password: params.password,
      nickname: params.nickname,
    );
  }
}

class SignUpUserParams extends Equatable {
  final String email;
  final String phone;
  final String password;
  final String nickname;

  const SignUpUserParams({
    required this.email,
    required this.phone,
    required this.password,
    required this.nickname,
  });

  @override
  List<Object?> get props => [phone, password, email, nickname];
}
