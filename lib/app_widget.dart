import 'package:flutter/material.dart';
import 'package:flutter_race/modules/login/login_page.dart';
import 'package:flutter_race/modules/login/pages/create_account/create_account_page.dart';
import 'package:flutter_race/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Race #1",
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => const SplashPage(),
          "/login": (context) => const LoginPage(),
          "/login/create-account": (context) => const CreateAccountPage()
        });
  }
}
