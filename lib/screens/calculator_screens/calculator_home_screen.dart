import 'package:bmi_app/screens/calculator_screens/components/arithmetic_container.dart';
import 'package:bmi_app/screens/calculator_screens/components/result_row.dart';
import 'package:bmi_app/screens/calculator_screens/components/upper_container.dart';
import 'package:flutter/material.dart';

class CalculatorHomeScreen extends StatefulWidget {
  CalculatorHomeScreen({super.key});
  double answer = 0;
  @override
  State<CalculatorHomeScreen> createState() => _CalculatorHomeScreenState();
}

class _CalculatorHomeScreenState extends State<CalculatorHomeScreen> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    num1Controller.clear();
    num2Controller.clear();
    widget.answer = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: UpperContainer(
                num1Controller: num1Controller,
                num2Controller: num2Controller,
              ),
            ),
            Expanded(flex: 1, child: ResultRow(answer: widget.answer)),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff007C6A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ArithmeticContainer(
                        operation: '+',
                        onTap: () {
                          widget.answer =
                              (double.parse(num1Controller.text) +
                                      double.parse(num2Controller.text))
                                  .toDouble();
                          setState(() {});
                        },
                      ),
                      ArithmeticContainer(
                        operation: '-',
                        onTap: () {
                          widget.answer =
                              (double.parse(num1Controller.text) -
                                      double.parse(num2Controller.text))
                                  .toDouble();
                          setState(() {});
                        },
                      ),
                      ArithmeticContainer(
                        operation: '*',
                        onTap: () {
                          widget.answer =
                              (double.parse(num1Controller.text) *
                                      double.parse(num2Controller.text))
                                  .toDouble();
                          setState(() {});
                        },
                      ),
                      ArithmeticContainer(
                        operation: '/',
                        onTap: () {
                          widget.answer =
                              (double.parse(num1Controller.text) /
                              double.parse(num2Controller.text));
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
