import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/SignUpStudent/description_section.dart';
import '../components/SignUpStudent/logo_button_section.dart';
import '../components/SignUpStudent/divider_section.dart';
import '../components/SignUpStudent/header_section.dart';
import '../components/SignUpStudent/input_section.dart';

class SignUpStudent extends StatelessWidget {
  static const routeName = '/sign-up-student';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBarWidget("Sign up as a student"),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1060,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderSection(),
              DescriptionSection(),
              // LogoButtonSection(),
              // DividerSection(),
              InputSection(),
            ],
          ),
        ),
      ),
    );
  }
}
