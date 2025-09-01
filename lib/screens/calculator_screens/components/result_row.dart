import 'package:flutter/material.dart';

class ResultRow extends StatefulWidget {
  const ResultRow({super.key, required this.answer});
  final double answer;

  @override
  State<ResultRow> createState() => _ResultRowState();
}

class _ResultRowState extends State<ResultRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(height: 10, width: 20, color: const Color(0xff014F41)),
        Text("Result = ${widget.answer}", style: const TextStyle(fontSize: 16)),
        Container(height: 10, width: 20, color: const Color(0xff014F41)),
      ],
    );
  }
}
