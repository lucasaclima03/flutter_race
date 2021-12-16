import 'package:flutter/material.dart';
import 'package:flutter_race/shared/theme/app_text.dart';
import 'package:flutter_race/shared/theme/app_theme.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscure;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const InputText({
    required this.label,
    required this.hint,
    this.onChanged,
    this.validator,
    Key? key,
    this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label).label,
        SizedBox(
          height: 12,
        ),
        TextFormField(
          obscureText: obscure,
          onChanged: onChanged,
          style: AppTheme.textStyles.input,
          validator: validator,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppTheme.textStyles.hint,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppTheme.colors.border))),
        ),
      ],
    );
  }
}