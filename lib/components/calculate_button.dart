import 'package:bmi_app/screens/result_screen.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.weight,
    required this.height,
  });
  final int weight;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          final heightInMeters = height / 100;
          final bmi = weight / (heightInMeters * heightInMeters);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultScreen(bmi: bmi)),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffE83D67),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
        ),
        child: const Text(
          'Calculate',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}
