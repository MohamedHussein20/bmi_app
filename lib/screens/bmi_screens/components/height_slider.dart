import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;

  const HeightSlider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 320,
      decoration: BoxDecoration(
        color: const Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Height",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                height.toStringAsFixed(0),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                " cm",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Slider(
            min: 0,
            max: 220,
            value: height,
            onChanged: onChanged,
            activeColor: Colors.pink,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
