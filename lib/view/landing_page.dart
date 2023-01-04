import 'package:flutter/material.dart';

import '../components/LandingPage/logo_section.dart';
import '../components/LandingPage/divider_section.dart';
import '../components/LandingPage/sign_up_button_section.dart';
import '../components/LandingPage/existing_account_section.dart';
import '../components/LandingPage/description_section.dart';
import '../components/LandingPage/header_section.dart';
import '../components/LandingPage/image_section.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/Landing-Page.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderSection(),
            ImageSection(),
            DescriptionSection(),
            LogoSection(),
            DividerSection(),
            SignUpButtonSection(),
            ExistingAccountSection(),
          ],
        ),
      ),
    );
  }
}
