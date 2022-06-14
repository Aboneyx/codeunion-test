import 'package:codeunion_test/core/platform/network_info.dart';
import 'package:codeunion_test/data/datasources/local/auth_local_ds.dart';
import 'package:codeunion_test/data/datasources/remote/auth_remote_ds.dart';
import 'package:codeunion_test/data/datasources/remote/restaurant_remote_ds.dart';
import 'package:codeunion_test/data/repositories/auth_repository_impl.dart';
import 'package:codeunion_test/data/repositories/restaurant_repository_impl.dart';
import 'package:codeunion_test/domain/repositories/auth_repository.dart';
import 'package:codeunion_test/domain/repositories/restaurant_repository.dart';
import 'package:codeunion_test/domain/usecases/auth/auth_check.dart';
import 'package:codeunion_test/domain/usecases/auth/auth_logout.dart';
import 'package:codeunion_test/domain/usecases/auth/sign_in_user.dart';
import 'package:codeunion_test/domain/usecases/auth/sign_up_user.dart';
import 'package:codeunion_test/domain/usecases/profile/get_user.dart';
import 'package:codeunion_test/domain/usecases/profile/get_user_from_back.dart';
import 'package:codeunion_test/domain/usecases/restaurant/add_like.dart';
import 'package:codeunion_test/domain/usecases/restaurant/delete_like.dart';
import 'package:codeunion_test/domain/usecases/restaurant/get_favorite_restaurants.dart';
import 'package:codeunion_test/domain/usecases/restaurant/get_restaurants.dart';
import 'package:codeunion_test/presentation/app/bloc/app_bloc.dart';
import 'package:codeunion_test/presentation/auth/bloc/auth_cubit.dart';
import 'package:codeunion_test/presentation/favorites/bloc/favorites_cubit.dart';
import 'package:codeunion_test/presentation/home/bloc/home_cubit.dart';
import 'package:codeunion_test/presentation/profile/bloc/profile_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initLocator() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => AppBloc(
      sl(),
      sl(),
      // sl(),
      // sl(),
      // sl(),
    ),
  );
  sl.registerFactory(
    () => AuthCubit(sl(), sl()),
  );
  sl.registerFactory<ProfileCubit>(
    () => ProfileCubit(sl(), sl()),
  );
  sl.registerFactory<HomeCubit>(
    () => HomeCubit(sl(), sl(), sl()),
  );
  sl.registerFactory<FavoritesCubit>(
    () => FavoritesCubit(sl(), sl(), sl()),
  );

  ///
  ///
  /// Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(sl()),
  );

  ///
  ///
  /// UseCases
  //auth
  sl.registerLazySingleton(() => AuthCheck(sl()));
  sl.registerLazySingleton(() => AuthLogout(sl()));
  sl.registerLazySingleton(() => SignInUser(sl()));
  sl.registerLazySingleton(() => SignUpUser(sl()));

  //profile
  sl.registerLazySingleton(() => GetUser(sl()));
  sl.registerLazySingleton(() => GetUserFromBack(sl()));

  //restaurant usecases
  sl.registerLazySingleton(() => GetRestaurants(sl()));
  sl.registerLazySingleton(() => GetFavoriteRestaurants(sl()));
  sl.registerLazySingleton(() => AddLike(sl()));
  sl.registerLazySingleton(() => DeleteLike(sl()));

  ///
  ///
  /// Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      localDS: sl(),
      remoteDS: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<RestaurantRepository>(
    () => RestaurantRepositoryImpl(
      localDS: sl(),
      remoteDS: sl(),
      networkInfo: sl(),
    ),
  );

  ///
  ///
  /// DS
  sl.registerLazySingleton<AuthRemoteDS>(
    () => AuthRemoteDSImpl(sl()),
  );
  sl.registerLazySingleton<RestaurantRemoteDS>(
    () => RestaurantRemoteDSImpl(sl()),
  );

  ///
  ///
  /// LS
  sl.registerLazySingleton<AuthLocalDS>(
    () => AuthLocalDSImpl(sharedPreferences: sl()),
  );

  ///
  ///
  /// External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Logger());
}
