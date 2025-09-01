import 'package:bmi_app/screens/login_screens/components/login_button.dart';
import 'package:bmi_app/screens/login_screens/components/login_text_form_field.dart';
import 'package:bmi_app/screens/login_screens/components/register_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  IconData suffixIcon = Icons.visibility;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xff4278FE)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 120),
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Enter a beautiful world",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const LoginTextFormField(
                            hintText: "Your Email",
                            icon: Icon(Icons.email),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: suffixIcon == Icons.visibility
                                ? passwordController
                                : TextEditingController(
                                    text: '*' * passwordController.text.length,
                                  ),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: Icon(suffixIcon),
                                onPressed: () {
                                  setState(() {
                                    suffixIcon = suffixIcon == Icons.visibility
                                        ? Icons.visibility_off
                                        : Icons.visibility;
                                  });
                                },
                              ),
                              hint: const Text(
                                "Password",
                                style: TextStyle(color: Colors.black),
                              ),
                              fillColor: const Color(0xffE7EDEB),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "forget password",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          const LoginButton(),
                          const SizedBox(height: 50),
                          const RegisterText(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
