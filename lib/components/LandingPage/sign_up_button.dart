import 'package:flutter/material.dart';

import '../../view/create_account_section.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: OutlinedButton(
        onPressed: () =>
            {Navigator.pushNamed(context, CreateAccount.routeName)},
        child: Text(
          "Sign up",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.green,
          side: BorderSide(
            color: Colors.green,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
