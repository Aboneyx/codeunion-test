import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthLogout extends UseCaseOnly<bool> {
  final AuthRepository _authRepository;
  AuthLogout(this._authRepository);

  @override
  Future<Either<Failure, bool>> call() async {
    return _authRepository.logOut();
  }
}
