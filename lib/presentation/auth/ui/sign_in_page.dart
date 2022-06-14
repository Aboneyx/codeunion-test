import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/presentation/app/bloc/app_bloc.dart';
import 'package:codeunion_test/presentation/app/widgets/custom_button.dart';
import 'package:codeunion_test/presentation/app/widgets/custom_snackbars.dart';
import 'package:codeunion_test/presentation/auth/bloc/auth_cubit.dart';
import 'package:codeunion_test/presentation/auth/widgets/auth_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          loadingState: () {
            context.loaderOverlay.show();
          },
          errorState: (String message) {
            context.loaderOverlay.hide();
            buildErrorCustomSnackBar(context, message);
          },
          loadedState: (UserDTO user) {
            context.loaderOverlay.hide();
            BlocProvider.of<AppBloc>(context).add(
              AppEvent.logining(
                user: user,
              ),
            );
          },
          orElse: () {
            context.loaderOverlay.hide();
          },
        );
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: LoaderOverlay(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Авторизация',
                style: GoogleFonts.manrope(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: AppColors.kBackground,
            body: SafeArea(
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      children: [
                        getInput(
                          controller: emailController,
                          hint: 'Логин или почта',
                          validator: () {},
                          inputDecoration: authStyle(
                            'Логин или почта',
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Divider(),
                        const SizedBox(height: 2),
                        getInput(
                          controller: passwordController,
                          hint: 'Пароль',
                          isHidden: true,
                          validator: () {},
                          inputDecoration: authStyle(
                            'Пароль',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomButton(
                      height: 64,
                      onClick: () {
                        if (emailController.text.isEmpty) {
                          buildErrorCustomSnackBar(
                            context,
                            'Введите свое логин или адрес электронной почты',
                          );
                          return;
                        }

                        if (passwordController.text.isEmpty) {
                          buildErrorCustomSnackBar(
                            context,
                            'Введите пароль',
                          );
                          return;
                        }
                        BlocProvider.of<AuthCubit>(context).signIn(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      },
                      body: Text(
                        'Войти',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: purpleButtonStyle(),
                    ),
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomButton(
                      height: 64,
                      onClick: () {
                        BlocProvider.of<AppBloc>(context)
                            .add(const AppEvent.toSignUp());
                      },
                      body: Text(
                        'Зарегистрироваться',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: purpleButtonStyle(),
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
