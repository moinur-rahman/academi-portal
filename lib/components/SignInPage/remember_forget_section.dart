import 'package:flutter/material.dart';

import '../../components/SignInPage/checkbox.dart';

class RememberForgetSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              children: [
                CheckBoxWidget(),
                Text(
                  "Remember Password",
                  style: TextStyle(
                    color: Color(0xff6B6B6B),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Forgot Password",
            style: TextStyle(
              color: Color(0xff6B6B6B),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
