part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initialState() = _InitialState;

  const factory HomeState.loadingState() = _LoadingState;

  const factory HomeState.loadedState({
    required List<RestaurantDTO> restaurants,
  }) = _LoadedState;

  const factory HomeState.errorState({
    required String message,
  }) = _ErrorState;
}
