import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width - 80;
    return SizedBox(
      width: width,
      child: Text(
        "Welcome back! Sign in using your social account or continue as",
        style: TextStyle(
          color: Colors.black,
          fontSize: width * 0.04,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
