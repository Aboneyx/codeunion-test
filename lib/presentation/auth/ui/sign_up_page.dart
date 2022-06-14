import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/presentation/app/bloc/app_bloc.dart';
import 'package:codeunion_test/presentation/app/widgets/custom_button.dart';
import 'package:codeunion_test/presentation/auth/widgets/auth_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nickController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visiblePassword = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Регистрация',
            style: GoogleFonts.manrope(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            onPressed: () => BlocProvider.of<AppBloc>(context)
                .add(const AppEvent.toSignIn()),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: AppColors.kBackground,
        body: SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  children: [
                    getInput(
                      controller: nickController,
                      hint: 'Логин',
                      validator: () {},
                      inputDecoration: authStyle(
                        'Логин',
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Divider(),
                    const SizedBox(height: 2),
                    getInput(
                      controller: phoneController,
                      hint: 'Телефон',
                      validator: () {},
                      inputDecoration: authStyle(
                        'Телефон',
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Divider(),
                    const SizedBox(height: 2),
                    getInput(
                      controller: emailController,
                      hint: 'Почта',
                      validator: () {},
                      inputDecoration: authStyle(
                        'Почта',
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Divider(),
                    const SizedBox(height: 2),
                    getInput(
                      controller: passwordController,
                      textInputType: TextInputType.text,
                      hint: 'Пароль',
                      isHidden: visiblePassword,
                      validator: () {},
                      inputDecoration: authStyle(
                        'Пароль',
                        suffixIcon: visiblePassword
                            ? IconButton(
                                onPressed: () => setState(
                                  () => visiblePassword = !visiblePassword,
                                ),
                                icon: const Icon(Icons.visibility_off),
                              )
                            : IconButton(
                                onPressed: () => setState(
                                  () => visiblePassword = !visiblePassword,
                                ),
                                icon: const Icon(Icons.visibility),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 7),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(
                  height: 64,
                  onClick: () {
                    // BlocProvider.of<AppBloc>(context)
                    //     .add(AppEvent.registration());
                  },
                  body: Text(
                    'Создать аккаунт',
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: purpleButtonStyle(),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
