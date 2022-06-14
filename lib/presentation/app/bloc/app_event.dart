part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkAuth() = _CheckAuth;

  const factory AppEvent.toSignIn() = _ToSignIn;

  const factory AppEvent.toSignUp() = _ToSignUp;

  const factory AppEvent.logining({
    required UserDTO user,
  }) = _Logining;

  const factory AppEvent.exiting() = _Exiting;
}
