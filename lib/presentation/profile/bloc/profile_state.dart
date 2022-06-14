part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initialState() = _InitialState;

  const factory ProfileState.loadingState() = _LoadingState;

  const factory ProfileState.loadedState({
    required UserDTO user,
  }) = _LoadedState;

  const factory ProfileState.errorState({
    required String message,
  }) = _ErrorState;
}
