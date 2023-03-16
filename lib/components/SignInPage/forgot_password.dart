import 'package:flutter/material.dart';

import '../common/constant.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forgot Password",
        style: TextStyle(
          color: AppColors.green,
          fontSize: height * 0.018,
        ),
      ),
    );
  }
}
