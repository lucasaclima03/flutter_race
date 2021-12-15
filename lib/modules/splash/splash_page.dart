

import 'package:flutter/material.dart';
import 'package:flutter_race/shared/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Center (
        child: Image.asset("assets/images/logo.png"),
      )
    );
  }
}