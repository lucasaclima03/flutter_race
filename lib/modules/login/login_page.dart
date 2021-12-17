import 'package:flutter/material.dart';
import 'package:flutter_race/modules/login/login_controller.dart';
import 'package:flutter_race/modules/login/pages/create_account/create_account_page.dart';
import 'package:flutter_race/shared/theme/app_text.dart';
import 'package:flutter_race/shared/theme/app_theme.dart';
import 'package:flutter_race/shared/widgets/button/button.dart';
import 'package:flutter_race/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png", width: 200),
              InputText(
                label: "E-mail", 
                hint: "Digite seu email",
                validator: (value) => isEmail(value)?null : "Digite um e-mail válido" ,
                onChanged: (value)=> controller.onChange(email: value),              
                ),
              SizedBox(height: 18),
              InputText(
                label: "Senha", 
                obscure: true, 
                hint: "Digite sua senha",
                validator: (value)=> value.length >= 6 ? null : "Digite uma senha com mais de 6 caracteres",
                onChanged: (value)=> controller.onChange(password: value),
                ),
              SizedBox(
                height: 14,
              ),
              Button(
                label: "Entrar",
                onTap: () {
                  controller.login();
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
      ),
    );
  }
}
