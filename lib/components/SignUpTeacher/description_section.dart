import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.6,
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
