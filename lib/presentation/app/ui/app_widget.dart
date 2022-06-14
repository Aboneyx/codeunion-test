import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/presentation/app/bloc/app_bloc.dart';
import 'package:codeunion_test/presentation/app/widgets/loading_scaffold.dart';
import 'package:codeunion_test/presentation/auth/ui/sign_in_page.dart';
import 'package:codeunion_test/presentation/auth/ui/sign_up_page.dart';
import 'package:codeunion_test/presentation/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AppBloc>(context).add(const AppEvent.checkAuth());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          loadingState: () => const LoadingScaffold(),
          signUpState: () => const SignUpPage(),
          signInState: () => const SignInPage(),
          inAppState: (UserDTO user) => const Base(),
          errorState: (String message) => const LoadingScaffold(
            indicatorColor: Colors.red,
          ),
        );
      },
    );
  }
}
