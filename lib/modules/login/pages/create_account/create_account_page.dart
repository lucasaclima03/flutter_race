import 'package:flutter/material.dart';
import 'package:flutter_race/modules/login/pages/create_account/create_account_controller.dart';
import 'package:flutter_race/shared/theme/app_theme.dart';
import 'package:flutter_race/shared/widgets/button/button.dart';
import 'package:flutter_race/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({ Key? key }) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final controller = CreateAccountController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.background,
        leading: BackButton(color: AppTheme.colors.backButton,),
        elevation: 0,
      ),
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Criando uma conta", style: AppTheme.textStyles.title,),
              SizedBox(height: 10,),
              Text("Mantenha seus gastos em dia", style: AppTheme.textStyles.subtitle),
              SizedBox(height: 38,),
              InputText(
                label: "Nome", 
                hint: "Digite seu nome completo",
                validator: (value)=> value.isNotEmpty ? null : "Digite seu nome completo",
                onChanged: (value)=> controller.onChange(name: value),
                ),
              SizedBox(height: 18),
              InputText(
                label: "E-mail", 
                hint: "Digite seu email",
                validator: (value)=>isEmail(value)?null: "Digite um e-mail válido",
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
                height: 38,
              ),
              Button(
                label: "Criar conta",
                onTap: (){
                  controller.create();
                },
              ),            
            ],
          ),
        ),
      ),
    );;
  }
}