import 'package:flutter/material.dart';

import '../../view/sign_in_page.dart';
import '../../components/common/constant.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Existing Account?",
            style: TextStyle(
              fontSize: height * 0.020,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, SignInPage.routeName),
            child: Text(
              "Login",
              style: TextStyle(
                color: AppColors.green,
                fontSize: height * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
