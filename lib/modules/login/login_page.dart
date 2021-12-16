import 'package:flutter/material.dart';
import 'package:flutter_race/modules/login/pages/create_account/create_account.dart';
import 'package:flutter_race/shared/theme/app_text.dart';
import 'package:flutter_race/shared/theme/app_theme.dart';
import 'package:flutter_race/shared/widgets/button/button.dart';
import 'package:flutter_race/shared/widgets/input_text/input_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", width: 200),
            InputText(label: "E-mail", hint: "Digite seu email"),
            SizedBox(height: 18),
            InputText(label: "Senha", obscure: true, hint: "Digite sua senha"),
            SizedBox(
              height: 14,
            ),
            Button(
              label: "Entrar",
              onTap: () {
                print("Entrar");
              },
            ),
            SizedBox(
              height: 22,
            ),
            Button(
              label: "Criar conta",
              type: ButtonType.outline,
              onTap: () {
                Navigator.pushNamed(context, "/login/create-account");
              },
            ),
          ],
        ),
      ),
    );
  }
}
