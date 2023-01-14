import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Text(
        "AcademiPortal is a platform where student and teacher can up-to-date with their academic activities.",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
