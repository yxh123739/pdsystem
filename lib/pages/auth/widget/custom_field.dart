import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.controller,
    required this.hint,
    required this.obscure,
    this.onChange,
  });
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final Function(String value)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      onChanged: onChange,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey[500],
        ),
      ),
    );
  }
}
