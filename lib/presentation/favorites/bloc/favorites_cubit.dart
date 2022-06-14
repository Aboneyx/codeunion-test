import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/domain/usecases/restaurant/add_like.dart';
import 'package:codeunion_test/domain/usecases/restaurant/delete_like.dart';
import 'package:codeunion_test/domain/usecases/restaurant/get_favorite_restaurants.dart';
import 'package:codeunion_test/domain/usecases/restaurant/get_restaurants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.dart';
part 'favorites_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final GetFavoriteRestaurants _getRestaurants;
  final AddLike _addLike;
  final DeleteLike _deleteLike;

  FavoritesCubit(
    this._getRestaurants,
    this._addLike,
    this._deleteLike,
  ) : super(const FavoritesState.initialState());

  // ignore: prefer_final_fields
  int _page = 1;

  Future<void> getRestaurants() async {
    emit(const FavoritesState.loadingState());

    final result = await _getRestaurants.call();

    result.fold(
      (l) async {
        emit(FavoritesState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(seconds: 2));
        const FavoritesState.initialState();
      },
      (r) => emit(FavoritesState.loadedState(restaurants: r)),
    );
  }

  Future<void> _refresh() async {
    final result = await _getRestaurants.call();

    result.fold(
      (l) async {
        emit(FavoritesState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(seconds: 2));
        const FavoritesState.initialState();
      },
      (r) => emit(FavoritesState.loadedState(restaurants: r)),
    );
  }

  Future<void> addLike({
    required int resId,
  }) async {
    final result = await _addLike.call(resId);

    result.fold((l) async {
      emit(FavoritesState.errorState(message: mapFailureToMessage(l)));
      await Future.delayed(const Duration(seconds: 2));
      _refresh();
    }, (r) {
      _refresh();
    });
  }

  Future<void> deleteLike({
    required int resId,
  }) async {
    final result = await _deleteLike.call(resId);

    result.fold((l) async {
      emit(FavoritesState.errorState(message: mapFailureToMessage(l)));
      await Future.delayed(const Duration(seconds: 2));
      _refresh();
    }, (r) {
      _refresh();
    });
  }
}
