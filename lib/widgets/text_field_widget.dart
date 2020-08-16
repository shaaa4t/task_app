import 'package:flutter/material.dart';
import 'package:task_app/commons/commons.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool obscureText;

  const TextFieldWidget({
    @required this.label,
    @required this.hint,
    @required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors.primary,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors.primary,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hint,
          labelText: label,
          focusColor: ThemeColors.primary,
          labelStyle: TextStyle(color: ThemeColors.textColor),
          prefixIcon: Icon(
            icon,
            color: ThemeColors.primary,
          ),
          fillColor: ThemeColors.primary),
      style: TextStyle(
        color: ThemeColors.primary,
      ),
      cursorColor: ThemeColors.primary,
      obscureText: obscureText,
    );
  }

}