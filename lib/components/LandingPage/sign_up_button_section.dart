import 'package:flutter/material.dart';

import './sign_up_button.dart';

class SignUpButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SignUpButton("Teacher"),
          Text(
            "OR",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SignUpButton("Student"),
        ],
      ),
    );
  }
}
