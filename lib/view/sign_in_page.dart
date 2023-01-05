import 'package:flutter/material.dart';

import '../components/SignInPage/description_section.dart';
import '../components/SignInPage/logo_button_section.dart';
import '../components/SignInPage/divider_section.dart';
import '../components/SignInPage/input_section.dart';
import '../components//AppBar/app_bar_widget.dart';
import '../components/SignInPage/sign_in_button_section.dart';
import '../components/SignInPage/header_section.dart';
import '../components/SignInPage/footer_image.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBarWidget(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderSection(),
            DescriptionSection(),
            LogoButtonSection(),
            DividerSection(),
            InputSection(),
            SignInButtonSection(),
            FooterImage(),
          ],
        ),
      ),
    );
  }
}
