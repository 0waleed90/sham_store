import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.readOnly,
    this.onTap,
  });
  final String hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool readOnly;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      readOnly: readOnly,

      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12),
        ),
        border: OutlineInputBorder(
          borderRadius: .circular(8),
          borderSide: BorderSide(color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        hintText: hintText,
      ),
    );
  }
}
