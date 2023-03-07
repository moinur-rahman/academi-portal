import 'package:flutter/material.dart';

import '../../view/create_account_section.dart';
import '../../components/common/constant.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
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
        child: const Text(
          "Sign up",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    );
  }
}
