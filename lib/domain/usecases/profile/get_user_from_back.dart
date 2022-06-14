import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/core/usecase/usecase.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class GetUserFromBack extends UseCaseOnly<UserDTO> {
  final AuthRepository _authRepository;
  GetUserFromBack(this._authRepository);

  @override
  Future<Either<Failure, UserDTO>> call() async {
    return _authRepository.getUserFromBack();
  }
}
