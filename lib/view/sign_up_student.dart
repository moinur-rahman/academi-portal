import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/SignUpStudent/description_section.dart';
import '../components/SignUpStudent/logo_button_section.dart';
import '../components/SignUpStudent/divider_section.dart';
import '../components/SignUpStudent/header_section.dart';
import '../components/SignUpStudent/input_section.dart';

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
          height: 1150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeaderSection(),
                    DescriptionSection(),
                    LogoButtonSection(),
                  ],
                ),
              ),
              DividerSection(),
              InputSection(),
            ],
          ),
        ),
      ),
    );
  }
}
