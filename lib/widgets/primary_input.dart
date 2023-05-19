import 'package:flutter/material.dart';

class PrimaryInput extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool? isPassword;
  final TextInputType? textInputType;

  const PrimaryInput(
      {super.key,
      required this.label,
      this.placeholder,
      this.isPassword,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 10),
      decoration: InputDecoration(
        fillColor: Colors.black,
        labelText: label,
        hintText: placeholder ?? "",
        labelStyle: TextStyle(color: Colors.black, fontSize: 10),
        hintStyle: TextStyle(fontSize: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      obscureText: isPassword ?? false,
      keyboardType: textInputType ?? TextInputType.text,
      textInputAction: TextInputAction.done,
    );
  }
}
