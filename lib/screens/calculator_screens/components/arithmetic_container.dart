import 'package:flutter/material.dart';

class ArithmeticContainer extends StatefulWidget {
  const ArithmeticContainer({
    super.key,
    required this.operation,
    required this.onTap,
  });
  final String operation;
  final VoidCallback onTap;
  @override
  State<ArithmeticContainer> createState() => _ArithmeticContainerState();
}

class _ArithmeticContainerState extends State<ArithmeticContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffEDDCFF),
        ),
        child: Text(
          widget.operation,
          style: const TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
