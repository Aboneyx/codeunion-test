import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/usecases/auth/auth_check.dart';
import 'package:codeunion_test/domain/usecases/auth/auth_logout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'app_bloc.freezed.dart';
part 'app_state.dart';
part 'app_event.dart';

const _tag = 'AppBloc';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthCheck _authCheck;
  final AuthLogout _authLogout;
  // final OnboardingSave _onboardingSave;
  // final OnboardingCheck _onboardingCheck;
  // final SendDeviceToken _sendDeviceToken;

  final throttleDuration = const Duration(milliseconds: 100);

  EventTransformer<E> throttleDroppable<E>(Duration duration) {
    return (events, mapper) {
      return droppable<E>().call(events.throttle(duration), mapper);
    };
  }

  AppBloc(
    this._authCheck,
    this._authLogout,
    // this._onboardingSave,
    // this._onboardingCheck,
    // this._sendDeviceToken,
  ) : super(const AppState.loadingState()) {
    on<AppEvent>(
      (AppEvent event, Emitter<AppState> emit) async => event.map(
        exiting: (_Exiting event) async => _exit(event, emit),
        checkAuth: (_CheckAuth event) async => _checkAuth(event, emit),
        toSignIn: (_ToSignIn event) async => _toSignIn(event, emit),
        toSignUp: (_ToSignUp event) async => _toSignUp(event, emit),
        logining: (_Logining event) async => _login(event, emit),
      ),
      // transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _checkAuth(
    _CheckAuth event,
    Emitter<AppState> emit,
  ) async {
    final result = await _authCheck.call();

    result.fold(
      (l) => emit(const AppState.signInState()),
      (r) {
        emit(AppState.inAppState(user: r));
      },
    );
  }

  Future<void> _toSignIn(
    _ToSignIn event,
    Emitter<AppState> emit,
  ) async {
    emit(const AppState.signInState());
  }

  Future<void> _toSignUp(
    _ToSignUp event,
    Emitter<AppState> emit,
  ) async {
    emit(const AppState.signUpState());
  }

  Future<void> _login(
    _Logining event,
    Emitter<AppState> emit,
  ) async {
    emit(AppState.inAppState(user: event.user));
  }

  Future<void> _exit(
    _Exiting event,
    Emitter<AppState> emit,
  ) async {
    emit(const AppState.signInState());
    final result = await _authLogout.call();

    result.fold(
      (l) {
        log('##### _exit::: ${mapFailureToMessage(l)}');
        emit(const AppState.signInState());
      },
      (r) => emit(const AppState.signInState()),
    );
  }

  @override
  void onChange(Change<AppState> change) {
    log(change.toString(), name: _tag);
    super.onChange(change);
  }
}
