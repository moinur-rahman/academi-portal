import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final String buttonName;

  SignUpButton(this.buttonName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(
            context, '/sign-up-' + buttonName.toLowerCase()),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
