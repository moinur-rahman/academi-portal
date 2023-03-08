import 'package:flutter/material.dart';

import '../../view/create_account_section.dart';
import '../../components/common/constant.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.5,
      height: height * 0.07,
      child: OutlinedButton(
        onPressed: () =>
            {Navigator.pushNamed(context, CreateAccount.routeName)},
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.green,
          side: const BorderSide(
            color: AppColors.green,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          "Sign up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height * 0.025,
          ),
        ),
      ),
    );
  }
}
