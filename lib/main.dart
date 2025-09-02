import 'package:bmi_app/screens/bmi_screens/bmi_home_screen.dart';
import 'package:bmi_app/screens/calculator_screens/calculator_home_screen.dart';
import 'package:bmi_app/screens/login_screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 82,
        margin: const EdgeInsets.only(top: 8),
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: "BMI",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          ],
        ),
      ),
    );
  }
}
