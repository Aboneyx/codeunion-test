import 'package:codeunion_test/core/di/locator_service.dart';
import 'package:codeunion_test/presentation/app/bloc/app_bloc.dart';
import 'package:codeunion_test/presentation/auth/bloc/auth_cubit.dart';
import 'package:codeunion_test/presentation/favorites/bloc/favorites_cubit.dart';
import 'package:codeunion_test/presentation/home/bloc/home_cubit.dart';
import 'package:codeunion_test/presentation/profile/bloc/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocWrapper extends StatelessWidget {
  final Widget child;
  const BlocWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => sl<AppBloc>(),
        ),
        BlocProvider<AuthCubit>(
          create: (context) => sl<AuthCubit>(),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => sl<ProfileCubit>(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => sl<HomeCubit>(),
        ),
        BlocProvider<FavoritesCubit>(
          create: (context) => sl<FavoritesCubit>(),
        ),
      ],
      child: child,
    );
  }
}
