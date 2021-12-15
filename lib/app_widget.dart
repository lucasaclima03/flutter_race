import 'package:flutter/material.dart';
import 'package:flutter_race/modules/login/login_page.dart';
import 'package:flutter_race/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Race #1",
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: "/login",
        routes: {
          "/splash": (context) => const SplashPage(),
          "/login": (context) => const LoginPage()
        });
  }
}
