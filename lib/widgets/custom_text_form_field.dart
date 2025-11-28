import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.suffixIcon, this.icon, this.keyboardType, this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        print('Valor: $value');
      },
      validator: (value) {
        if (value!.length < 5) {
          return 'El nombre debe de ser de 5 letras';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // prefixIcon: Icon(Icons.person),
        suffixIcon: Icon(suffixIcon),
        icon: Icon(icon),
        border: OutlineInputBorder(
          
        )
      ),
    );
  }
}