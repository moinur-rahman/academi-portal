import 'dart:math';

import 'package:flutter/material.dart';

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(title: "Sign In", height: height),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: max(height, 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: height * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HeaderSection(),
                    DescriptionSection(),
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
