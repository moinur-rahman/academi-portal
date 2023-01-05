import 'package:flutter/material.dart';

class DividerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "OR",
        style: TextStyle(
            color: Color(0xff6B6B6B),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
