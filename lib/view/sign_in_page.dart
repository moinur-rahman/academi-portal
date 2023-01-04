import 'package:flutter/material.dart';

import '../components/SignInPage/description_section.dart';
import '../components/SignInPage/logo_section.dart';
import '../components/SignInPage/divider_section.dart';
import '../components/SignInPage/input_section.dart';
import '../components//AppBar/app_bar_widget.dart';
import '../components/SignInPage/sign_in_button_section.dart';
import '../components/SignInPage/header_section.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderSection(),
            DescriptionSection(),
            LogoSection(),
            DividerSection(),
            InputSection(),
            SignInButton(),
          ],
        ),
      ),
    );
  }
}
