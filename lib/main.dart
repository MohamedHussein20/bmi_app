import 'package:bmi_app/screens/bmi_screens/bmi_home_screen.dart';
import 'package:bmi_app/screens/calculator_screens/calculator_home_screen.dart';
import 'package:bmi_app/screens/login_screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int currentIndex = 0;
Widget? body = const BmiHomeScreen();
List<Widget> screens = [
  const BmiHomeScreen(),
  CalculatorHomeScreen(),
  const LoginScreen(),
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: Container(
        height: 82,
        margin: const EdgeInsets.only(top: 8),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          items: [
           BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  body = screens[0];
                  setState(() {});
                },
                icon: const Icon(Icons.health_and_safety),
              ),
              label: "BMI",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  body = screens[1];
                  setState(() {});
                },
                icon: const Icon(Icons.calculate),
              ),
              label: "Calculator",
            ),
            
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  body = screens[2];
                  setState(() {});
                },
                icon: const Icon(Icons.login),
              ),
              label: "Login",
            ),
          ],
        ),
      ),
    );
  }
}
