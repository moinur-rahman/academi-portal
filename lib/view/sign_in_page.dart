import 'package:flutter/material.dart';
import 'dart:math';

import '../components/common/app_bar_widget.dart';
import '../components/SignInPage/description_section.dart';
import '../components/SignInPage/logo_button_section.dart';
import '../components/SignInPage/divider_section.dart';
import '../components/SignInPage/input_section.dart';
import '../components/SignInPage/header_section.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/login';

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget("Sign In"),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 850,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeaderSection(),
                    const DescriptionSection(),
                    LogoButtonSection(),
                  ],
                ),
              ),
              const DividerSection(),
              const InputSection(),
            ],
          ),
        ),
      ),
    );
  }
}
