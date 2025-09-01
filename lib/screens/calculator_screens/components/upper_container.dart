import 'package:bmi_app/screens/calculator_screens/components/custom_textformfield.dart';
import 'package:flutter/material.dart';

class UpperContainer extends StatefulWidget {
  const UpperContainer({
    super.key,
    required this.num1Controller,
    required this.num2Controller,
  });
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;

  @override
  State<UpperContainer> createState() => _UpperContainerState();
}

class _UpperContainerState extends State<UpperContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff007C6A),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(48),
          bottomRight: Radius.circular(48),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextFormField(
            hintText: "Num1",
            controller: widget.num1Controller,
          ),
          const SizedBox(height: 24),
          CustomTextFormField(
            hintText: "Num2",
            controller: widget.num2Controller,
          ),
        ],
      ),
    );
  }
}
