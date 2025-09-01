import 'package:bmi_app/components/attributes_row.dart';
import 'package:bmi_app/components/calculate_button.dart';
import 'package:bmi_app/components/gender_selection_row.dart';
import 'package:bmi_app/components/height_slider.dart';
import 'package:flutter/material.dart';

class BmiHomeScreen extends StatefulWidget {
  const BmiHomeScreen({super.key});

  @override
  State<BmiHomeScreen> createState() => _BmiHomeScreenState();
}

class _BmiHomeScreenState extends State<BmiHomeScreen> {
  double height = 110;
  int weight = 60;
  int age = 20;

  @override
  void initState() {
    super.initState();
    height = 110;
    weight = 60;
    age = 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF24263B),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const GenderSelectionRow(),
          HeightSlider(
            height: height,
            onChanged: (newHeight) {
              setState(() {
                height = newHeight;
              });
            },
          ),
          const AttributesRow(),
          CalculateButton(weight: weight, height: height),
        ],
      ),
    );
  }
}
