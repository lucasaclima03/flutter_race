import 'package:flutter/material.dart';
import 'package:flutter_race/shared/theme/app_text.dart';
import 'package:flutter_race/shared/theme/app_theme.dart';

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
            children: [
              Image.asset("assets/images/logo.png", 
              width: 200,
            ),
            InputText(),
            SizedBox(
              height: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [              
                Text("Senha").label,
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  style: AppTheme.textStyles.input,
                  decoration: InputDecoration(              
                    hintText: "Digite seu email",
                    hintStyle: AppTheme.textStyles.hint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppTheme.colors.border)
                    )
                  ),
                ),
                
              ],
            ),
            
      ],
    ),
        ));
  }
}

class InputText extends StatelessWidget {
  const InputText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [              
        Text("Email").label,
        SizedBox(
          height: 12,
        ),
        TextFormField(
          style: AppTheme.textStyles.input,
          decoration: InputDecoration(              
            hintText: "Digite seu email",
            hintStyle: AppTheme.textStyles.hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppTheme.colors.border)
            )
          ),
        ),
        
      ],
    );
  }
}
