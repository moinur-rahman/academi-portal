import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Text(
        "Sign up as a student",
        style: TextStyle(
          color: Colors.black,
          fontSize: height * 0.04,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
