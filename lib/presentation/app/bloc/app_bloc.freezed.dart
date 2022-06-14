// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() signUpState,
    required TResult Function() signInState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignUpState value) signUpState,
    required TResult Function(_SignInState value) signInState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, (v) => _then(v as _$_LoadingState));

  @override
  _$_LoadingState get _value => super._value as _$_LoadingState;
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'AppState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() signUpState,
    required TResult Function() signInState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignUpState value) signUpState,
    required TResult Function(_SignInState value) signInState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AppState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState();

  @override
  String toString() {
    return 'AppState.signUpState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() signUpState,
    required TResult Function() signInState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return signUpState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
  }) {
    return signUpState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (signUpState != null) {
      return signUpState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignUpState value) signUpState,
    required TResult Function(_SignInState value) signInState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return signUpState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
  }) {
    return signUpState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (signUpState != null) {
      return signUpState(this);
    }
    return orElse();
  }
}

abstract class _SignUpState implements AppState {
  const factory _SignUpState() = _$_SignUpState;
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState();

  @override
  String toString() {
    return 'AppState.signInState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() signUpState,
    required TResult Function() signInState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return signInState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
  }) {
    return signInState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (signInState != null) {
      return signInState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignUpState value) signUpState,
    required TResult Function(_SignInState value) signInState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return signInState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
  }) {
    return signInState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (signInState != null) {
      return signInState(this);
    }
    return orElse();
  }
}

abstract class _SignInState implements AppState {
  const factory _SignInState() = _$_SignInState;
}

/// @nodoc
abstract class _$$_InAppStateCopyWith<$Res> {
  factory _$$_InAppStateCopyWith(
          _$_InAppState value, $Res Function(_$_InAppState) then) =
      __$$_InAppStateCopyWithImpl<$Res>;
  $Res call({UserDTO user});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$_InAppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_InAppStateCopyWith<$Res> {
  __$$_InAppStateCopyWithImpl(
      _$_InAppState _value, $Res Function(_$_InAppState) _then)
      : super(_value, (v) => _then(v as _$_InAppState));

  @override
  _$_InAppState get _value => super._value as _$_InAppState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_InAppState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_InAppState implements _InAppState {
  const _$_InAppState({required this.user});

  @override
  final UserDTO user;

  @override
  String toString() {
    return 'AppState.inAppState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InAppState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_InAppStateCopyWith<_$_InAppState> get copyWith =>
      __$$_InAppStateCopyWithImpl<_$_InAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() signUpState,
    required TResult Function() signInState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return inAppState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
  }) {
    return inAppState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (inAppState != null) {
      return inAppState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignUpState value) signUpState,
    required TResult Function(_SignInState value) signInState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return inAppState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
  }) {
    return inAppState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (inAppState != null) {
      return inAppState(this);
    }
    return orElse();
  }
}

abstract class _InAppState implements AppState {
  const factory _InAppState({required final UserDTO user}) = _$_InAppState;

  UserDTO get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_InAppStateCopyWith<_$_InAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, (v) => _then(v as _$_ErrorState));

  @override
  _$_ErrorState get _value => super._value as _$_ErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppState.errorState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() signUpState,
    required TResult Function() signInState,
    required TResult Function(UserDTO user) inAppState,
    required TResult Function(String message) errorState,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? signUpState,
    TResult Function()? signInState,
    TResult Function(UserDTO user)? inAppState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignUpState value) signUpState,
    required TResult Function(_SignInState value) signInState,
    required TResult Function(_InAppState value) inAppState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignUpState value)? signUpState,
    TResult Function(_SignInState value)? signInState,
    TResult Function(_InAppState value)? inAppState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AppState {
  const factory _ErrorState({required final String message}) = _$_ErrorState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$_CheckAuthCopyWith<$Res> {
  factory _$$_CheckAuthCopyWith(
          _$_CheckAuth value, $Res Function(_$_CheckAuth) then) =
      __$$_CheckAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_CheckAuthCopyWith<$Res> {
  __$$_CheckAuthCopyWithImpl(
      _$_CheckAuth _value, $Res Function(_$_CheckAuth) _then)
      : super(_value, (v) => _then(v as _$_CheckAuth));

  @override
  _$_CheckAuth get _value => super._value as _$_CheckAuth;
}

/// @nodoc

class _$_CheckAuth implements _CheckAuth {
  const _$_CheckAuth();

  @override
  String toString() {
    return 'AppEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AppEvent {
  const factory _CheckAuth() = _$_CheckAuth;
}

/// @nodoc
abstract class _$$_ToSignInCopyWith<$Res> {
  factory _$$_ToSignInCopyWith(
          _$_ToSignIn value, $Res Function(_$_ToSignIn) then) =
      __$$_ToSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToSignInCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_ToSignInCopyWith<$Res> {
  __$$_ToSignInCopyWithImpl(
      _$_ToSignIn _value, $Res Function(_$_ToSignIn) _then)
      : super(_value, (v) => _then(v as _$_ToSignIn));

  @override
  _$_ToSignIn get _value => super._value as _$_ToSignIn;
}

/// @nodoc

class _$_ToSignIn implements _ToSignIn {
  const _$_ToSignIn();

  @override
  String toString() {
    return 'AppEvent.toSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
  }) {
    return toSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
  }) {
    return toSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return toSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
  }) {
    return toSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn(this);
    }
    return orElse();
  }
}

abstract class _ToSignIn implements AppEvent {
  const factory _ToSignIn() = _$_ToSignIn;
}

/// @nodoc
abstract class _$$_ToSignUpCopyWith<$Res> {
  factory _$$_ToSignUpCopyWith(
          _$_ToSignUp value, $Res Function(_$_ToSignUp) then) =
      __$$_ToSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToSignUpCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_ToSignUpCopyWith<$Res> {
  __$$_ToSignUpCopyWithImpl(
      _$_ToSignUp _value, $Res Function(_$_ToSignUp) _then)
      : super(_value, (v) => _then(v as _$_ToSignUp));

  @override
  _$_ToSignUp get _value => super._value as _$_ToSignUp;
}

/// @nodoc

class _$_ToSignUp implements _ToSignUp {
  const _$_ToSignUp();

  @override
  String toString() {
    return 'AppEvent.toSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
  }) {
    return toSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
  }) {
    return toSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return toSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
  }) {
    return toSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp(this);
    }
    return orElse();
  }
}

abstract class _ToSignUp implements AppEvent {
  const factory _ToSignUp() = _$_ToSignUp;
}

/// @nodoc
abstract class _$$_LoginingCopyWith<$Res> {
  factory _$$_LoginingCopyWith(
          _$_Logining value, $Res Function(_$_Logining) then) =
      __$$_LoginingCopyWithImpl<$Res>;
  $Res call({UserDTO user});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginingCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_LoginingCopyWith<$Res> {
  __$$_LoginingCopyWithImpl(
      _$_Logining _value, $Res Function(_$_Logining) _then)
      : super(_value, (v) => _then(v as _$_Logining));

  @override
  _$_Logining get _value => super._value as _$_Logining;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_Logining(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Logining implements _Logining {
  const _$_Logining({required this.user});

  @override
  final UserDTO user;

  @override
  String toString() {
    return 'AppEvent.logining(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logining &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_LoginingCopyWith<_$_Logining> get copyWith =>
      __$$_LoginingCopyWithImpl<_$_Logining>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
  }) {
    return logining(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
  }) {
    return logining?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (logining != null) {
      return logining(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return logining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
  }) {
    return logining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (logining != null) {
      return logining(this);
    }
    return orElse();
  }
}

abstract class _Logining implements AppEvent {
  const factory _Logining({required final UserDTO user}) = _$_Logining;

  UserDTO get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoginingCopyWith<_$_Logining> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExitingCopyWith<$Res> {
  factory _$$_ExitingCopyWith(
          _$_Exiting value, $Res Function(_$_Exiting) then) =
      __$$_ExitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExitingCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_ExitingCopyWith<$Res> {
  __$$_ExitingCopyWithImpl(_$_Exiting _value, $Res Function(_$_Exiting) _then)
      : super(_value, (v) => _then(v as _$_Exiting));

  @override
  _$_Exiting get _value => super._value as _$_Exiting;
}

/// @nodoc

class _$_Exiting implements _Exiting {
  const _$_Exiting();

  @override
  String toString() {
    return 'AppEvent.exiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Exiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
    required TResult Function(UserDTO user) logining,
    required TResult Function() exiting,
  }) {
    return exiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
  }) {
    return exiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    TResult Function(UserDTO user)? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (exiting != null) {
      return exiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ToSignIn value) toSignIn,
    required TResult Function(_ToSignUp value) toSignUp,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return exiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
  }) {
    return exiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ToSignIn value)? toSignIn,
    TResult Function(_ToSignUp value)? toSignUp,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (exiting != null) {
      return exiting(this);
    }
    return orElse();
  }
}

abstract class _Exiting implements AppEvent {
  const factory _Exiting() = _$_Exiting;
}
