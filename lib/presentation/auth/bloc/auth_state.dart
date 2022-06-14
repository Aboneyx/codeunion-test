part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initialState() = _InitialState;

  const factory AuthState.loadingState() = _LoadingState;

  const factory AuthState.loadedState({
    required UserDTO user,
  }) = _LoadedState;

  const factory AuthState.errorState({
    required String message,
  }) = _ErrorState;
}
