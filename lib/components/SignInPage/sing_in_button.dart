import 'package:flutter/material.dart';

class SingInButton extends StatelessWidget {
  final VoidCallback onSubmit;
  const SingInButton({
    required this.onSubmit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.5,
      height: height * 0.07,
      child: OutlinedButton(
        onPressed: onSubmit,
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: const BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
        child: Text(
          "Sign In",
          style: TextStyle(
            fontSize: height * 0.027,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
