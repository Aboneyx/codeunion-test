// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

int basePageIndex = 0;

const NOT_FOUND_IMAGE =
    'https://cdn.shopify.com/shopifycloud/shopify/assets/no-image-2048-5e88c1b20e087fb7bbe9a3771824e743c244f437e4f8ba93bbf7b11b53f7824c_600x600.gif';
const NO_INTERNET_TEXT = 'Нет интернета!';

mixin AppColors {
  static const Color kPrimaryColor = Color(0xff4631D2);
  static const Color kRed = Color(0xffEC3A4D);
  static const Color kBackground = Color(0xffE5E5E5);
  static const Color kWhite = Colors.white;
  static const Color kGray = Color(0xffC3C3C3);
  static const Color kReviewBg = Color(0xffF7F7FC);
}

Map<int, Color> primaryColorMap = {
  50: const Color.fromRGBO(70, 49, 210, .1),
  200: const Color.fromRGBO(70, 49, 210, .3),
  300: const Color.fromRGBO(70, 49, 210, .4),
  400: const Color.fromRGBO(70, 49, 210, .5),
  100: const Color.fromRGBO(70, 49, 210, .2),
  500: const Color.fromRGBO(70, 49, 210, .6),
  600: const Color.fromRGBO(70, 49, 210, .7),
  700: const Color.fromRGBO(70, 49, 210, .8),
  800: const Color.fromRGBO(70, 49, 210, .9),
  900: const Color.fromRGBO(70, 49, 210, 1),
};

mixin GlobalVariable {
  static final navigatorKey = GlobalKey<NavigatorState>();
}

Widget refreshClassicHeader = const ClassicHeader(
  completeText: 'Успешно обновлено!',
  releaseText: 'Обновить!',
  idleText: 'Потяните вниз, чтобы обновить',
  failedText: 'Неизвестная ошибка',
  refreshingText: 'Обновление...',
);

Widget refreshClassicFooter = const ClassicFooter(
  // completeText: 'Успешно обновлено!',
  // releaseText: 'Обновить!',
  idleText: '',
  failedText: 'Неизвестная ошибка',
  loadingText: 'Загружаем...',
  canLoadingText: 'Потяните вверх, чтобы загрузить данные',
  idleIcon: null,
);
