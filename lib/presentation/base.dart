import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/presentation/favorites/ui/favorites_page.dart';
import 'package:codeunion_test/presentation/home/bloc/home_cubit.dart';
import 'package:codeunion_test/presentation/home/ui/home_page.dart';
import 'package:codeunion_test/presentation/map/ui/map_page.dart';
import 'package:codeunion_test/presentation/profile/bloc/profile_cubit.dart';
import 'package:codeunion_test/presentation/profile/ui/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  Future<void> init() async {
    BlocProvider.of<HomeCubit>(context).getRestaurants();

    BlocProvider.of<ProfileCubit>(context).refreshUserInfo();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [
      const HomePage(),
      const MapPage(),
      const FavoritesPage(),
      const ProfilePage(),
    ];

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: getAppBars().elementAt(basePageIndex),
        backgroundColor: const Color(0xffF3F4F6), //AppColors.kBackground,
        body: SafeArea(
          child: children[basePageIndex],
        ),
        bottomNavigationBar: SizedBox(
          // height: 113,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: basePageIndex,
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            onTap: (int index) {
              onTappedBar(index);
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.kWhite,
                icon: SvgPicture.asset(
                  'assets/icons/home_icon.svg',
                  color: Colors.black,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/home_icon.svg',
                  color: AppColors.kPrimaryColor,
                ),
                label: 'Лента',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.kWhite,
                icon: SvgPicture.asset('assets/icons/map_icon.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/icons/map_icon.svg',
                  color: AppColors.kPrimaryColor,
                ),
                label: 'Карта',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.kWhite,
                icon: SvgPicture.asset('assets/icons/fav_icon.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/icons/fav_icon.svg',
                  color: AppColors.kPrimaryColor,
                ),
                label: 'Избранные',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.kWhite,
                icon: SvgPicture.asset('assets/icons/profile_icon.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/icons/profile_icon.svg',
                  color: AppColors.kPrimaryColor,
                ),
                label: 'Профиль',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTappedBar(int index) {
    setState(() {
      basePageIndex = index;
    });
  }

  List<AppBar?> getAppBars() {
    return [
      null,
      null,
      AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Избранные',
          style: GoogleFonts.manrope(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Профиль',
          style: GoogleFonts.manrope(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      )
    ];
  }
}
