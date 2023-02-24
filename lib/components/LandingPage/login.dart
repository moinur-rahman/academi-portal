import 'package:flutter/material.dart';

import '../../view/sign_in_page.dart';
import '../../components/common/constant.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Existing Account?",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          TextButton(
            onPressed: () =>
                {Navigator.pushNamed(context, SignInPage.routeName)},
            child: const Text(
              "Login",
              style: TextStyle(
                color: AppColors.green,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
