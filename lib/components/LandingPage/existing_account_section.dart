import 'package:flutter/material.dart';

import '../../view/sign_in_page.dart';
class ExistingAccountSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
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
            onPressed: () => {Navigator.pushNamed(context, SignInPage.routeName)},
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
      ),
    );
  }
}
