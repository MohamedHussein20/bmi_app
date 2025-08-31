import 'package:flutter/material.dart';

class AttributesRow extends StatefulWidget {
  const AttributesRow({super.key});

  @override
  State<AttributesRow> createState() => _AttributesRowState();
}

class _AttributesRowState extends State<AttributesRow> {
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 180,
          width: 155,
          decoration: BoxDecoration(
            color: const Color(0xff24263B),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Weight',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                '$weight',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        weight--;
                      });
                    },
                    icon: const Icon(Icons.remove, color: Colors.white),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: const CircleBorder(),
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        weight++;
                      });
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: const CircleBorder(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(width: 20),

        Container(
          height: 180,
          width: 155,
          decoration: BoxDecoration(
            color: const Color(0xff333244),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Age',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                '$age',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        age--;
                      });
                    },
                    icon: const Icon(Icons.remove, color: Colors.white),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: const CircleBorder(),
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        age++;
                      });
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: const CircleBorder(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
