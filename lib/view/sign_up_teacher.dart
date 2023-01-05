import 'package:flutter/material.dart';

import '../components/AppBar/app_bar_widget.dart';
import '../components/SignUpTeacher/description_section.dart';
import '../components/SignUpTeacher/logo_button_section.dart';
import '../components/SignUpTeacher/divider_section.dart';
import '../components/SignUpTeacher/header_section.dart';
import '../components/SignUpTeacher/input_section.dart';
import '../components/SignUpTeacher/terms_conditions_section.dart';
import '../components/SignUpTeacher/sign_up_button_section.dart';
import '../components/SignUpTeacher/footer_image.dart';

class SignUpTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 900,
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
