import 'package:flutter/material.dart';

class LoginTextFormField extends StatefulWidget {
  const LoginTextFormField({super.key, required this.hintText, required this.icon});
  final String hintText;
  final Icon icon;
  @override
  State<LoginTextFormField> createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {
  IconData suffixIcon = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: widget.icon,
        hint: Text(widget.hintText, style: const TextStyle(color: Colors.black)),
        fillColor: const Color(0xffE7EDEB),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
