import 'package:flutter/material.dart';

class TermsConditionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "By creating account you agree to our", // Terms of Service and Privacy Policy.
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text("Terms of Service")),
              Text("and"),
              TextButton(onPressed: () {}, child: Text("Privacy Policy")),
              Text("."),
            ],
          ),
        ],
      ),
    );
  }
}
