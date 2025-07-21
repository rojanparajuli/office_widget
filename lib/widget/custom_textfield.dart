import 'package:flutter/material.dart';

class BeautifulTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final IconData? icon;
  final bool obscureText;

  const BeautifulTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: icon != null ? Icon(icon, color: Colors.orange) : null,
        hintText: hintText,
        filled: true,
        fillColor: Colors.orange.withValues(alpha: 0.05),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.orange, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange.withValues(alpha: 0.4), width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
