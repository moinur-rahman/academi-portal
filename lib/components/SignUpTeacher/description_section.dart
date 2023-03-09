import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: 300,
      child: Text(
        "Sign up using your social account or continue as",
        style: TextStyle(
          color: Colors.black,
          fontSize: height * 0.02,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
