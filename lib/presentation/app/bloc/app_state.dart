part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.loadingState() = _LoadingState;

  const factory AppState.signUpState() = _SignUpState;

  const factory AppState.signInState() = _SignInState;

  const factory AppState.inAppState({
    required UserDTO user,
  }) = _InAppState;

  const factory AppState.errorState({
    required String message,
  }) = _ErrorState;

  // factory AppState.fromJson(Map<String, dynamic> json) => _$FromJson(json);
}
