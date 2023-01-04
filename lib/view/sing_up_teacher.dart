import 'package:flutter/material.dart';

import '../components/AppBar/app_bar_widget.dart';
import '../components/SignUpTeacher/description_section.dart';
import '../components/SignUpTeacher/logo_section.dart';
import '../components/SignUpTeacher/divider_section.dart';
import '../components/SignUpTeacher/header_section.dart';
import '../components/SignUpTeacher/input_section.dart';

class SignUpTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderSection(),
            DescriptionSection(),
            LogoSection(),
            DividerSection(),
            InputSection(),
          ],
        ),
      ),
    );
  }
}
