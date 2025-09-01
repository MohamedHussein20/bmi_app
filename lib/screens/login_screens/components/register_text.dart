import 'package:flutter/material.dart';

class RegisterText extends StatefulWidget {
  const RegisterText({super.key});

  @override
  State<RegisterText> createState() => _RegisterTextState();
}

class _RegisterTextState extends State<RegisterText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Register Now",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
