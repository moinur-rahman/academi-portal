import 'dart:math';

import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/SignUpTeacher/description_section.dart';
import '../components/SignUpTeacher/logo_button_section.dart';
import '../components/SignUpTeacher/divider_section.dart';
import '../components/SignUpTeacher/header_section.dart';
import '../components/SignUpTeacher/input_section.dart';
import '../components/SignUpTeacher/terms_conditions_section.dart';

class SignUpTeacher extends StatelessWidget {
  static const routeName = '/sign-up-teacher';

  const SignUpTeacher({super.key});
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
          height: max(height, 750),
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
