import 'package:codeunion_test/core/error/failure.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/domain/usecases/profile/get_user.dart';
import 'package:codeunion_test/domain/usecases/profile/get_user_from_back.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetUser _getUser;
  final GetUserFromBack _getUserFromBack;

  ProfileCubit(
    this._getUser,
    this._getUserFromBack,
  ) : super(const ProfileState.initialState());

  Future<void> getUserFromCache() async {
    state.maybeWhen(
      loadedState: (UserDTO user) {},
      orElse: () {
        emit(const ProfileState.loadingState());
      },
    );

    final failureOrSuccess = await _getUser.call();

    failureOrSuccess.fold(
      (l) => emit(
        ProfileState.errorState(message: mapFailureToMessageBack(l)),
      ),
      (r) => emit(ProfileState.loadedState(user: r)),
    );
  }

  Future<void> refreshUserInfo() async {
    emit(const ProfileState.loadingState());
    final result = await _getUserFromBack.call();

    result.fold(
      (l) async {
        emit(
          ProfileState.errorState(message: mapFailureToMessageBack(l)),
        );
        await getUserFromCache();
      },
      (r) => emit(ProfileState.loadedState(user: r)),
    );
  }
}
