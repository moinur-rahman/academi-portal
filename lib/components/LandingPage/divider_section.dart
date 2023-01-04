import 'package:flutter/material.dart';

class DividerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 150,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "OR",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 150,
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
