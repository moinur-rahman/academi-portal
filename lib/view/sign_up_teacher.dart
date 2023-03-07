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
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBarWidget(
        title: "Sign up as a teacher",
        height: height,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 900,
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
