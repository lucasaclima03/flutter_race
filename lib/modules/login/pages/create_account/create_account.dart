import 'package:flutter/material.dart';
import 'package:flutter_race/shared/theme/app_theme.dart';
import 'package:flutter_race/shared/widgets/button/button.dart';
import 'package:flutter_race/shared/widgets/input_text/input_text.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Criando uma conta", style: AppTheme.textStyles.title,),
            SizedBox(height: 10,),
            Text("Mantenha seus gastos em dia", style: AppTheme.textStyles.subtitle),
            SizedBox(height: 38,),
            InputText(label: "Nome", hint: "Digite seu nome completo"),
            SizedBox(height: 18),
            InputText(label: "E-mail", hint: "Digite seu email"),
            SizedBox(height: 18),
            InputText(label: "Senha", hint: "Digite sua senha"),
            SizedBox(
              height: 38,
            ),
            Button(
              label: "Criar conta",
              onTap: (){
                print("Criar conta");
              },
            ),            
          ],
        ),
      ),
    );;
  }
}