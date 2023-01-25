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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBarWidget("Sign In"),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: max(731, MediaQuery.of(context).size.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderSection(),
              DescriptionSection(),
              LogoButtonSection(),
              DividerSection(),
              InputSection(),
            ],
          ),
        ),
      ),
    );
  }
}
