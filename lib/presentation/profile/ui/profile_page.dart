import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/data/models/user_dto.dart';
import 'package:codeunion_test/presentation/app/bloc/app_bloc.dart';
import 'package:codeunion_test/presentation/profile/bloc/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SizedBox(
            height: 64,
            width: 64,
            child: Image.asset('assets/images/profile.png'),
          ),
          const SizedBox(height: 15),
          BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadedState: (UserDTO user) {
                  return Column(
                    children: [
                      Text(
                        '${user.nickname}',
                        style: GoogleFonts.manrope(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '${user.email}',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          color: AppColors.kGray,
                        ),
                      ),
                    ],
                  );
                },
                orElse: () {
                  return Column(
                    children: [
                      Text(
                        'Name Surname',
                        style: GoogleFonts.manrope(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'email@gmail.com',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          color: AppColors.kGray,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const Spacer(),
          Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                BlocProvider.of<AppBloc>(context).add(const AppEvent.exiting());
              },
              child: Container(
                color: Colors.transparent,
                height: 55,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Text(
                  'Выйти',
                  style: GoogleFonts.manrope(
                    color: AppColors.kRed,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 7,
          ),
        ],
      ),
    );
  }
}
