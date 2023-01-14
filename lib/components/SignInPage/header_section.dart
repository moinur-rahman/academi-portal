import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        "Sign In",
        style: TextStyle(
            color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
      ),
    );
  }
}
