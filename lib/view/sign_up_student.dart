import 'dart:math';

import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/SignUpStudent/description_section.dart';
import '../components/SignUpStudent/logo_button_section.dart';
import '../components/SignUpStudent/divider_section.dart';
import '../components/SignUpStudent/header_section.dart';
import '../components/SignUpStudent/input_section.dart';
import '../components/SignUpStudent/terms_conditions_section.dart';

class SignUpStudent extends StatelessWidget {
  static const routeName = '/sign-up-student';

  const SignUpStudent({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        title: "Sign up",
        height: height,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: height * 1.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              HeaderSection(),
              DescriptionSection(),
              LogoButtonSection(),
              DividerSection(),
              InputSection(),
              TermsConditionsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
