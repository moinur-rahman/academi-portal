import 'package:flutter/material.dart';

import '../components/SignInPage/description_section.dart';
import '../components/SignInPage/logo_section.dart';
import '../components/SignInPage/divider_section.dart';
import '../components/SignInPage/remember_forget_section.dart';
import '../components/SignInPage/InputSection.dart';
import '../components//AppBar/app_bar_widget.dart';
import '../components/SignInPage/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            DescriptionSection(),
            LogoSection(),
            DividerSection(),
            InputSection(),
            RememberForgetSection(),
            SignInButton(),
          ],
        ),
      ),
    );
  }
}

