import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/domain/usecases/restaurant/add_like.dart';
import 'package:codeunion_test/domain/usecases/restaurant/delete_like.dart';
import 'package:codeunion_test/domain/usecases/restaurant/get_restaurants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetRestaurants _getRestaurants;
  final AddLike _addLike;
  final DeleteLike _deleteLike;

  HomeCubit(
    this._getRestaurants,
    this._addLike,
    this._deleteLike,
  ) : super(const HomeState.initialState());

  // ignore: prefer_final_fields
  int _page = 1;

  Future<void> getRestaurants() async {
    emit(const HomeState.loadingState());

    final result = await _getRestaurants.call(_page);

    result.fold(
      (l) async {
        emit(HomeState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(seconds: 2));
        const HomeState.initialState();
      },
      (r) => emit(HomeState.loadedState(restaurants: r)),
    );
  }

  Future<void> _refresh() async {
    final result = await _getRestaurants.call(_page);

    result.fold(
      (l) async {
        emit(HomeState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(seconds: 2));
        const HomeState.initialState();
      },
      (r) => emit(HomeState.loadedState(restaurants: r)),
    );
  }

  Future<void> addLike({
    required int resId,
  }) async {
    final result = await _addLike.call(resId);

    result.fold((l) async {
      emit(HomeState.errorState(message: mapFailureToMessage(l)));
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
      emit(HomeState.errorState(message: mapFailureToMessage(l)));
      await Future.delayed(const Duration(seconds: 2));
      _refresh();
    }, (r) {
      _refresh();
    });
  }
}
