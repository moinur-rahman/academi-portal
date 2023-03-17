import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  final VoidCallback onSubmit;
  const CreateAccountButton({
    required this.onSubmit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.45,
      height: height * 0.07,
      child: OutlinedButton(
        onPressed: onSubmit,
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.green,
            side: const BorderSide(color: Colors.green),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          "Create Account",
          style: TextStyle(
            fontSize: height * 0.022,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
