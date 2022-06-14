part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initialState() = _InitialState;

  const factory FavoritesState.loadingState() = _LoadingState;

  const factory FavoritesState.loadedState({
    required List<RestaurantDTO> restaurants,
  }) = _LoadedState;

  const factory FavoritesState.errorState({
    required String message,
  }) = _ErrorState;
}
