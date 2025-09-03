import 'package:flutter/material.dart';

class GenderContainer extends StatefulWidget {
  const GenderContainer({
    super.key,
    required this.color,
    required this.gender,
    required this.icon,
  });
  final Color color;
  final String gender;
  final IconData icon;

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 155,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon, color: Colors.white, size: 80),
          const SizedBox(height: 10),
          Text(
            widget.gender,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
