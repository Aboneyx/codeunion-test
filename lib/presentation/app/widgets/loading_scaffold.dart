import 'package:codeunion_test/common/constants.dart';
import 'package:flutter/material.dart';

class LoadingScaffold extends StatelessWidget {
  final Color? indicatorColor;
  const LoadingScaffold({Key? key, this.indicatorColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(
            color: indicatorColor,
          ),
        ),
      ),
    );
  }
}
