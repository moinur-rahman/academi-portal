import 'package:flutter/material.dart';

import '../components/AppBar/app_bar_widget.dart';
import '../components/SignUpStudent/description_section.dart';
import '../components/SignUpStudent/logo_button_section.dart';
import '../components/SignUpStudent/divider_section.dart';
import '../components/SignUpStudent/header_section.dart';
import '../components/SignUpStudent/input_section.dart';
import '../components/SignUpStudent/terms_conditions_section.dart';
import '../components/SignUpStudent/sign_up_button_section.dart';
import '../components/SignUpStudent/footer_image.dart';

class SignUpStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1000,
          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderSection(),
              DescriptionSection(),
              LogoButtonSection(),
              DividerSection(),
              InputSection(),
              TermsConditionsSection(),
              SignUpButtonSection(),
              FooterImage(),
            ],
          ),
        ),
      ),
    );
  }
}
