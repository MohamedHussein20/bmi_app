import 'package:bmi_app/screens/bmi_screens/components/gender_container.dart';
import 'package:flutter/material.dart';

class GenderSelectionRow extends StatefulWidget {
  const GenderSelectionRow({super.key});

  @override
  State<GenderSelectionRow> createState() => _GenderSelectionRowState();
}

class _GenderSelectionRowState extends State<GenderSelectionRow> {
  Color maleDefaultColor = const Color(0xff24263B);
  Color femaleDefaultColor = const Color(0xff333244);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                maleDefaultColor = Colors.lightBlue;
                femaleDefaultColor = const Color(0xff333244);
                setState(() {});
              },
              child: GenderContainer(
                color: maleDefaultColor,
                gender: 'Male',
                icon: Icons.male,
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                femaleDefaultColor = Colors.pinkAccent;
                maleDefaultColor = const Color(0xff24263B);
                setState(() {});
              },
              child: GenderContainer(
                color: femaleDefaultColor,
                gender: 'Female',
                icon: Icons.female,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
