import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class SignInUser extends UseCase<UserDTO, SignInUserParams> {
  final AuthRepository _authRepository;
  SignInUser(this._authRepository);

  @override
  Future<Either<Failure, UserDTO>> call(SignInUserParams params) async {
    return _authRepository.signInUser(
      email: params.email,
      password: params.password,
    );
  }
}

class SignInUserParams extends Equatable {
  final String email;
  final String password;

  const SignInUserParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
