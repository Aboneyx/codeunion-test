import 'package:bloc/bloc.dart';
import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/usecases/auth/sign_in_user.dart';
import 'package:codeunion_test/domain/usecases/auth/sign_up_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final SignInUser _signInUser;
  final SignUpUser _signUpUser;

  AuthCubit(
    this._signInUser,
    this._signUpUser,
  ) : super(const AuthState.initialState());

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loadingState());

    final result = await _signInUser.call(
      SignInUserParams(
        email: email,
        password: password,
      ),
    );

    result.fold(
      (l) => emit(AuthState.errorState(message: mapFailureToMessage(l))),
      (r) => emit(AuthState.loadedState(user: r)),
    );
  }

  Future<void> signUp({
    required String email,
    required String phone,
    required String password,
    required String nickname,
  }) async {
    emit(const AuthState.loadingState());

    final result = await _signUpUser.call(
      SignUpUserParams(
        nickname: nickname,
        phone: phone,
        email: email,
        password: password,
      ),
    );

    result.fold(
      (l) => emit(AuthState.errorState(message: mapFailureToMessage(l))),
      (r) => emit(AuthState.loadedState(user: r)),
    );
  }
}
