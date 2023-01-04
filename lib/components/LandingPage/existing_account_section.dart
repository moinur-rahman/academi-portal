import 'package:flutter/material.dart';

class ExistingAccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Existing Account?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        TextButton(
          onPressed: () => {Navigator.pushNamed(context, '/login')},
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
