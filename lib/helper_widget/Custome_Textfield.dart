import 'package:flutter/material.dart';

class CustomeTextfield extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final bool? secured;
  final Widget? suffixIcon;

  const CustomeTextfield({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.secured,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: secured ?? false,
      style: TextStyle(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
