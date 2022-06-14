import 'package:codeunion_test/bloc_wrapper.dart';
import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/core/di/locator_service.dart';
import 'package:codeunion_test/presentation/app/ui/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeUnion Test',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        textTheme: GoogleFonts.manropeTextTheme(),
        primarySwatch: MaterialColor(0xff4631D2, primaryColorMap),
      ),
      home: const BlocWrapper(child: AppWidget()),
    );
  }
}
