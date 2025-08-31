import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.bmi});
  final double bmi;
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'Your Result ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32.0),
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    widget.bmi < 18.5
                        ? 'Underweight'
                        : widget.bmi < 25
                        ? 'Normal'
                        : widget.bmi < 30
                        ? 'Overweight'
                        : 'Obese',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: widget.bmi < 18.5
                          ? Colors.yellow
                          : widget.bmi < 25
                          ? Colors.green
                          : widget.bmi < 30
                          ? Colors.orange
                          : Colors.red,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    widget.bmi.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      widget.bmi < 18.5
                          ? 'You are under the normal body weight. You can eat a bit more.'
                          : widget.bmi < 25
                          ? 'You have a normal body weight. Good job!'
                          : widget.bmi < 30
                          ? 'You are slightly over the normal body weight. Try to exercise more.'
                          : 'You are heavily over the normal body weight. Consult a doctor.',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
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
                  'Re - Calculate',
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
